
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_file {int logsize; int recsize; int recbuf; int fd; } ;
typedef int off_t ;


 int fifolog_int_file_assert (struct fifolog_file const*) ;
 int pread (int ,int ,int,int) ;

int
fifolog_int_read(const struct fifolog_file *ff, off_t recno)
{
 int i;

 fifolog_int_file_assert(ff);
 if (recno >= ff->logsize)
  return (-1);
 recno++;
 i = pread(ff->fd, ff->recbuf, ff->recsize, recno * ff->recsize);
 if (i < 0)
  return (-2);
 if (i != (int)ff->recsize)
  return (-3);
 return (0);
}
