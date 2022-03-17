SELECT TOP 10000
  body AS text, title, tags
FROM posts
WHERE DATEDIFF(month, getdate(), creationDate) >= -6
  AND deletionDate IS NULL
  AND body IS NOT NULL
  AND title IS NOT NULL;
