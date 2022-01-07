
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eparse (char const*,char const*,char const*) ;
 int exit (int ) ;
 int fclose (int ) ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 int int_usage () ;
 scalar_t__ isspace (char const) ;
 int outfp ;
 int putchar (char) ;
 int sflag ;
 int stdin ;
 char* xfgets (int ) ;

__attribute__((used)) static void
prompt(const char *s1, const char *s2)
{
 char *cmd;


 putchar('%');


 for (; (cmd = xfgets(stdin)); free(cmd)) {
  const char *p;


  for (p = cmd; isspace(*p); ++p)
   ;
  switch (*p) {
  case 'e':

   ++p;
   if (eparse(p, s1, s2) == -1)
    goto USAGE;
   break;
  case 'l':
  case '1':

   if (s1 != ((void*)0))
    fprintf(outfp, "%s\n", s1);

   break;
  case 'q':
   goto QUIT;
  case 'r':
  case '2':

   if (s2 != ((void*)0))
    fprintf(outfp, "%s\n", s2);

   break;
  case 's':
   sflag = 1;
   goto PROMPT;
  case 'v':
   sflag = 0;

  default:

USAGE:
   int_usage();
PROMPT:
   putchar('%');


   continue;
  }
  free(cmd);
  return;
 }





QUIT:
 fclose(outfp);
 exit(0);
}
