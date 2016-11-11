SELECT CountryID, Sum(Population) FROM City  
GROUP BY CountryID HAVING Sum(Population) > 400;

SELECT Country.Name, City.CityID, Building.CityID
FROM Country INNER JOIN CITY 
    on Country.CountryID=City.CountryID
LEFT JOIN Building
    on City.CityID=Building.CityID
WHERE Building.CityID is null;
