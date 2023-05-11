# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists Person_5 
(
Id int, 
Email varchar(255)
);

Truncate table Person_5;

insert into Person_5 (id, email) values ('1', 'john@example.com');
insert into Person_5 (id, email) values ('2', 'bob@example.com');
insert into Person_5 (id, email) values ('3', 'john@example.com');

select * from Person_5;

/**
Q. Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Note that you are supposed 
to write a DELETE statement and not a SELECT one.
After running your script, the answer shown is the Person table. The driver will first compile and run your piece of code and then show the Person table. 
The final order of the Person table does not matter.

Input: 
Person table:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
Output: 
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
Explanation: john@example.com is repeated two times. We keep the row with the smallest Id = 1.
**/

# QUERY 1 :- Run this SELECT statement to fetch duplicate id
SELECT * 
FROM person_5 AS p1
JOIN person_5 AS p2
ON p1.Email = p2.Email
WHERE p1.Id<p2.Id;

# QUERY 2 :- Delete Duplicate Email
DELETE p2
FROM person_5 AS p1
JOIN person_5 AS p2
ON p1.Email = p2.Email
WHERE p1.Id<p2.Id;

SELECT * FROM person_5;