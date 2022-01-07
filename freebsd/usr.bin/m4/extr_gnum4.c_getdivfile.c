
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int active ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int getc (int *) ;
 int putc (int,int ) ;

void
getdivfile(const char *name)
{
 FILE *f;
 int c;

 f = fopen(name, "r");
 if (!f)
  return;

 while ((c = getc(f))!= EOF)
  putc(c, active);
 (void) fclose(f);
}
