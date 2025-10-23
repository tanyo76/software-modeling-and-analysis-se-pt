DELIMITER //

CREATE FUNCTION GetMostLikedComment()
RETURNS TEXT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE most_liked_comment INT;

    RETURN (SELECT Content FROM USER_COMMENT ORDER BY Likes LIMIT 1);
END //

-- Usage example
-- SELECT GetMostLikedComment() as 'Most liked comment';