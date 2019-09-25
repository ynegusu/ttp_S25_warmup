-- WHERE Clause exercises: every query builds on the previous

-- grab all data from the film table
select * from film

-- English films only : return all films that have a language ID of 1
-- (note: we already know this happens to be all the films in the database
-- but let's make sure we know how to do this IF there was multiple languages)
select * from film  WHERE language_id = 1;

-- English films for todlers
-- return all films with language ID of 1 and is rated G

select * from film  WHERE language_id = 1 group by rating = 'G';

-- Family friendly English films
-- return all films with language ID of 1 and is rated G, PG, or PG-13

select * from film where rental in ('G','PG','PG-13') group by language_id = 1
     order by sum(replacement cost)< 10 

-- Family friendly English films on a budget:
-- return all films with language ID of 1 and is rated G, PG, or PG-13,
-- and have a rental rate less than $3 and a replacement cost less than $10

SELECT *
FROM film
WHERE language_id = 1 AND
 rating IN ('G', 'PG', 'PG-13') AND  rental_rate < 3 AND replacement_cost < 10;



	  
-- Nostalgiac family friendly English films on a budget with a short attention span!:
-- return all films with language ID of 1 and is rated G, PG, or PG-13,
-- and have a rental rate less than $3 and a replacement cost less than $10,
-- and last less than an hour and a half long, from the year 2006 or earlier


SELECT *
FROM film
WHERE language_id = 1 AND
 rating IN ('G', 'PG', 'PG-13') AND  rental_rate < 3 AND replacement_cost < 10 up_date =< 2006;



-- BONUS
-- Of the films from the previous query, which ones talk about a 'Moose' in the description?