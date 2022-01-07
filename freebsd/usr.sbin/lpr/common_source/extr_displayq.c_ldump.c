
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 int printf (char*,...) ;
 int putchar (char) ;
 int stat (char const*,struct stat*) ;

void
ldump(const char *nfile, const char *datafile, int copies)
{
 struct stat lbuf;

 putchar('\t');
 if (copies > 1)
  printf("%-2d copies of %-19s", copies, nfile);
 else
  printf("%-32s", nfile);
 if (*datafile && !stat(datafile, &lbuf))
  printf(" %qd bytes", (long long) lbuf.st_size);
 else
  printf(" ??? bytes");
 putchar('\n');
}
