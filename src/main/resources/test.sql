-- 즐겨찾기 지수 확인
SELECT id, index_name, index_classification, favorite FROM index_info WHERE favorite = true;

-- 특정 지수의 최근 데이터 확인
SELECT * FROM index_data WHERE index_info_id = 1 ORDER BY base_date DESC LIMIT 5;

-- 어제 날짜의 데이터 확인
SELECT * FROM index_data
WHERE index_info_id IN (SELECT id FROM index_info WHERE favorite = true)
  AND base_date = CURRENT_DATE - INTERVAL '1 day';
