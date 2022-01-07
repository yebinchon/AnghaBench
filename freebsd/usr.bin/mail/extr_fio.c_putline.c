
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ferror (int *) ;
 int fprintf (int *,char*) ;
 int fwrite (char*,int,int,int *) ;
 int strlen (char*) ;

int
putline(FILE *obuf, char *linebuf, int outlf)
{
 int c;

 c = strlen(linebuf);
 (void)fwrite(linebuf, sizeof(*linebuf), c, obuf);
 if (outlf) {
  fprintf(obuf, "\n");
  c++;
 }
 if (ferror(obuf))
  return (-1);
 return (c);
}
