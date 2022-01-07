
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int clearerr (int *) ;
 int * fgets (char*,int,int *) ;
 int strlen (char*) ;

int
readline(FILE *ibuf, char *linebuf, int linesize)
{
 int n;

 clearerr(ibuf);
 if (fgets(linebuf, linesize, ibuf) == ((void*)0))
  return (-1);
 n = strlen(linebuf);
 if (n > 0 && linebuf[n - 1] == '\n')
  linebuf[--n] = '\0';
 if (n > 0 && linebuf[n - 1] == '\r')
  linebuf[--n] = '\0';
 return (n);
}
