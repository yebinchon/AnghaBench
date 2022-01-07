
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int off_t ;
typedef int FILE ;


 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;

off_t
fsize(FILE *iob)
{
 struct stat sbuf;

 if (fstat(fileno(iob), &sbuf) < 0)
  return (0);
 return (sbuf.st_size);
}
