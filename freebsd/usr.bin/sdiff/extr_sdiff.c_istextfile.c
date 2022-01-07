
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int MAX_CHECK ;
 int fgetc (int *) ;
 int rewind (int *) ;

__attribute__((used)) static int
istextfile(FILE *f)
{
 int ch, i;

 if (f == ((void*)0))
  return (1);
 rewind(f);
 for (i = 0; i <= MAX_CHECK; i++) {
  ch = fgetc(f);
  if (ch == '\0') {
   rewind(f);
   return (0);
  }
  if (ch == EOF)
   break;
 }
 rewind(f);
 return (1);
}
