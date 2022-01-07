
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int regmatch_t ;
struct TYPE_7__ {scalar_t__ re_nsub; } ;
typedef TYPE_1__ regex_t ;


 int REG_EXTENDED ;
 int REG_NEWLINE ;
 int do_regexp (char const*,TYPE_1__*,char const*,char const*,int *) ;
 int do_regexpindex (char const*,TYPE_1__*,char const*,int *) ;
 int exit_regerror (int,TYPE_1__*,char const*) ;
 int free (int *) ;
 int m4_warnx (char*) ;
 scalar_t__ mimic_gnu ;
 int pbstr (char const*) ;
 int regcomp (TYPE_1__*,char const*,int) ;
 int regfree (TYPE_1__*) ;
 char const* twiddle (char const*) ;
 int * xreallocarray (int *,scalar_t__,int,int *) ;

void
doregexp(const char *argv[], int argc)
{
 int error;
 regex_t re;
 regmatch_t *pmatch;
 const char *source;

 if (argc <= 3) {
  m4_warnx("Too few arguments to regexp");
  return;
 }

 if (argv[3][0] == '\0' && mimic_gnu) {
  if (argc == 4 || argv[4] == ((void*)0))
   return;
  else
   pbstr(argv[4]);
 }
 source = mimic_gnu ? twiddle(argv[3]) : argv[3];
 error = regcomp(&re, source, REG_EXTENDED|REG_NEWLINE);
 if (error != 0)
  exit_regerror(error, &re, source);

 pmatch = xreallocarray(((void*)0), re.re_nsub+1, sizeof(regmatch_t), ((void*)0));
 if (argc == 4 || argv[4] == ((void*)0))
  do_regexpindex(argv[2], &re, source, pmatch);
 else
  do_regexp(argv[2], &re, source, argv[4], pmatch);
 free(pmatch);
 regfree(&re);
}
