
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int err (int,char*,char*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int getc (int *) ;
 int link (char*,char*) ;
 int putc (int,int *) ;

__attribute__((used)) static void
savelog(char *from, char *to)
{
 FILE *src, *dst;
 int c, res;

 res = link(from, to);
 if (res == 0)
  return;

 if ((src = fopen(from, "r")) == ((void*)0))
  err(1, "can't fopen %s for reading", from);
 if ((dst = fopen(to, "w")) == ((void*)0))
  err(1, "can't fopen %s for writing", to);

 while ((c = getc(src)) != EOF) {
  if ((putc(c, dst)) == EOF)
   err(1, "error writing to %s", to);
 }

 if (ferror(src))
  err(1, "error reading from %s", from);
 if ((fclose(src)) != 0)
  err(1, "can't fclose %s", to);
 if ((fclose(dst)) != 0)
  err(1, "can't fclose %s", from);
}
