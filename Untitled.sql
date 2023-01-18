CREATE TABLE `alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `nascimento` int,
  `email` varchar(255),
  `turma_id` int
);

CREATE TABLE `turmas` (
  `id` int PRIMARY KEY,
  `alunos_id` varchar(255),
  `curso_id` varchar(255),
  `disciplina` varchar(255),
  `professor_id` varchar(255),
  `turno` varchar(255)
);

CREATE TABLE `cursos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `coordenador_id` varchar(255),
  `professor_id` varchar(255),
  `turma_id` varchar(255)
);

CREATE TABLE `professores` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `email` varchar(255)
);

ALTER TABLE `turmas` ADD FOREIGN KEY (`alunos_id`) REFERENCES `alunos` (`id`);

ALTER TABLE `alunos` ADD FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id`);

ALTER TABLE `cursos` ADD FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`professor_id`) REFERENCES `professores` (`id`);

ALTER TABLE `professores` ADD FOREIGN KEY (`id`) REFERENCES `cursos` (`professor_id`);
