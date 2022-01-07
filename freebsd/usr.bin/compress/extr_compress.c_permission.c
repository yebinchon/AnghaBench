
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fileno (int ) ;
 int fprintf (int ,char*,char const*) ;
 int getchar () ;
 int isatty (int ) ;
 int stderr ;

__attribute__((used)) static int
permission(const char *fname)
{
 int ch, first;

 if (!isatty(fileno(stderr)))
  return (0);
 (void)fprintf(stderr, "overwrite %s? ", fname);
 first = ch = getchar();
 while (ch != '\n' && ch != EOF)
  ch = getchar();
 return (first == 'y');
}
