
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int answer ;


 int exit (int) ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int stdin ;
 char* strchr (char*,char) ;

const char *
askuser(const char *dflt)
{
 static char answer[256];
 char *p;


 if (feof(stdin) || ferror(stdin)) {
  (void)fprintf(stderr, "\n");
  exit(1);
 }
 for (;;) {
  if (dflt)
   (void)fprintf(stderr, "Terminal type? [%s] ", dflt);
  else
   (void)fprintf(stderr, "Terminal type? ");
  (void)fflush(stderr);

  if (fgets(answer, sizeof(answer), stdin) == ((void*)0)) {
   if (dflt == ((void*)0)) {
    (void)fprintf(stderr, "\n");
    exit(1);
   }
   return (dflt);
  }

  if ((p = strchr(answer, '\n')))
   *p = '\0';
  if (answer[0])
   return (answer);
  if (dflt != ((void*)0))
   return (dflt);
 }
}
