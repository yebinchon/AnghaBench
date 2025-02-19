
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*,int ,...) ;
 int fstat (int,struct stat*) ;
 int pipe (int*) ;
 int printf (char*) ;

int
main(void)
{
 int pipefd[2];
 struct stat st1, st2;

 if (pipe(pipefd) == -1)
  err(1, "FAIL: pipe");

 if (fstat(pipefd[0], &st1) == -1)
  err(1, "FAIL: fstat st1");
 if (fstat(pipefd[1], &st2) == -1)
  err(1, "FAIL: fstat st2");
 if (st1.st_dev != st2.st_dev || st1.st_dev == 0 || st2.st_dev == 0)
  errx(1, "FAIL: wrong dev number %ju %ju",
      (uintmax_t)st1.st_dev, (uintmax_t)st2.st_dev);
 if (st1.st_ino == st2.st_ino)
  errx(1, "FAIL: inode numbers are equal: %ju",
      (uintmax_t)st1.st_ino);

 close(pipefd[0]);
 close(pipefd[1]);
 printf("PASS\n");

 return (0);
}
