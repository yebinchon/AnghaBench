
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int Fclose (int *) ;
 int * Fopen (int ,char*) ;
 int _PATH_HELP ;
 int getc (int *) ;
 int putchar (int) ;
 int warn (char*,int ) ;

int
help(void)
{
 int c;
 FILE *f;

 if ((f = Fopen(_PATH_HELP, "r")) == ((void*)0)) {
  warn("%s", _PATH_HELP);
  return (1);
 }
 while ((c = getc(f)) != EOF)
  putchar(c);
 (void)Fclose(f);
 return (0);
}
