--Soluções

--1
SELECT Nome, Ano FROM Filmes;
--2
SELECT Nome, Ano, Duracao AS Duração FROM Filmes ORDER BY Ano;
--3
SELECT Nome, Ano, Duracao AS Duração FROM Filmes WHERE Nome = 'De Volta para o Futuro';
--4
SELECT Nome, Ano, Duracao AS Duração FROM Filmes WHERE Ano = 1997;
--5
SELECT Nome, Ano, Duracao AS Duração FROM Filmes WHERE Ano >= 2000;
--6
SELECT Nome, Ano, Duracao AS Duração FROM Filmes ORDER BY Duracao;
--7
SELECT Ano, COUNT(Ano) AS Quantidade 
FROM Filmes 
GROUP BY Ano;
--8
SELECT * FROM Atores WHERE Genero = 'M';
--9
SELECT * FROM Atores WHERE Genero = 'F';
--10
SELECT F.Nome, G.Genero 
FROM Filmes AS F
JOIN FilmesGenero AS FG ON FG.IdFilme = F.Id 
JOIN Generos AS G ON FG.IdGenero = G.Id;
--11
SELECT F.Nome, G.Genero 
FROM Filmes AS F
JOIN FilmesGenero AS FG ON FG.IdFilme = F.Id 
JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE Genero = 'Mistério';
--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes AS F
JOIN ElencoFilme AS E ON E.IdFilme = F.Id
JOIN Atores AS A ON E.IdAtor = A.Id;