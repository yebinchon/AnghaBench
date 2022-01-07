
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;
typedef int FILE ;


 int REG_BASIC ;
 int YESEXPR ;
 int _PATH_TTY ;
 int fclose (int *) ;
 int fflush (int ) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*) ;
 int nl_langinfo (int ) ;
 scalar_t__ regcomp (int *,int ,int ) ;
 int regexec (int *,char*,int ,int *,int ) ;
 int regfree (int *) ;
 int stderr ;

__attribute__((used)) static int
prompt(void)
{
 regex_t cre;
 size_t rsize;
 int match;
 char *response;
 FILE *ttyfp;

 if ((ttyfp = fopen(_PATH_TTY, "r")) == ((void*)0))
  return (2);
 (void)fprintf(stderr, "?...");
 (void)fflush(stderr);
 if ((response = fgetln(ttyfp, &rsize)) == ((void*)0) ||
     regcomp(&cre, nl_langinfo(YESEXPR), REG_BASIC) != 0) {
  (void)fclose(ttyfp);
  return (0);
 }
 response[rsize - 1] = '\0';
 match = regexec(&cre, response, 0, ((void*)0), 0);
 (void)fclose(ttyfp);
 regfree(&cre);
 return (match == 0);
}
