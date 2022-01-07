
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 scalar_t__ bol ;
 int getc (int *) ;
 scalar_t__ isblank (int) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int
skipws(FILE *fd)
{
 int c, i;

 i = 0;
 while ((c = getc(fd)) != EOF && isblank(c))
  i++;
 if (c != EOF)
  ungetc(c, fd);
 if (i != 0)
  bol = 0;
 return 0;
}
