-- Customer Support Dataset - Phase 1 Basic SQL
-- Table name assumed: customer_support

-- 1. SELECT
SELECT TicketID, IssueType, Priority, Channel, Status
FROM customer_support;

-- 2. WHERE
SELECT *
FROM customer_support
WHERE Priority = 'High';

-- 3. ORDER BY
SELECT TicketID, ResponseTimeMinutes
FROM customer_support
ORDER BY ResponseTimeMinutes DESC;

-- 4. GROUP BY
SELECT IssueType, COUNT(*) AS TicketCount
FROM customer_support
GROUP BY IssueType;

-- 5. HAVING
SELECT IssueType, COUNT(*) AS TicketCount
FROM customer_support
GROUP BY IssueType
HAVING COUNT(*) > 1000;

-- 6. DISTINCT
SELECT DISTINCT Channel
FROM customer_support;

-- 7. COUNT
SELECT COUNT(*) AS TotalTickets
FROM customer_support;

-- 8. SUM
SELECT SUM(EscalationFlag) AS TotalEscalations
FROM customer_support;

-- 9. AVG
SELECT AVG(ResponseTimeMinutes) AS AverageResponseTime
FROM customer_support;

-- 10. MIN
SELECT MIN(ResponseTimeMinutes) AS MinimumResponseTime
FROM customer_support;

-- 11. MAX
SELECT MAX(ResponseTimeMinutes) AS MaximumResponseTime
FROM customer_support;
