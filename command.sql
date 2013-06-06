SELECT
  10 AS page_limit,
  ( SELECT
      COUNT(userid)
    FROM user
    WHERE username <= ’Геральт’
    ORDER BY username
  ) AS pos,
  ( SELECT
      MOD(pos - 1, page_limit) + 1
  ) AS line,
  ( SELECT
      FLOOR((pos - 1) / page_limit) + 1
  ) AS page
