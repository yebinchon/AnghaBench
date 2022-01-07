
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 int getc (int *) ;

int
fgetNUL(char *obuf, int rmdr, FILE *file)
{
 int c;
 char *buf = obuf;

 while (--rmdr > 0 && (c = getc(file)) != 0 && c != EOF)
  *buf++ = c;
 *buf++ = 0;
 getc(file);
 return ((feof(file) || ferror(file)) ? 0 : 1);
}
