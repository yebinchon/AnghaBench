
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int regmatch_t ;
struct TYPE_6__ {scalar_t__ re_nsub; } ;
typedef TYPE_1__ regex_t ;


 int REG_EXTENDED ;
 int REG_NEWLINE ;
 int addchar (char const) ;
 int addchars (char const*,size_t) ;
 int do_subst (char const*,TYPE_1__*,char const*,char const*,int *) ;
 int exit_regerror (int,TYPE_1__*,char const*) ;
 int free (int *) ;
 int getstring () ;
 int m4_warnx (char*) ;
 scalar_t__ mimic_gnu ;
 int pbstr (int ) ;
 int regcomp (TYPE_1__*,char const*,int) ;
 int regfree (TYPE_1__*) ;
 size_t strlen (char const*) ;
 char const* twiddle (char const*) ;
 int * xreallocarray (int *,scalar_t__,int,int *) ;

void
dopatsubst(const char *argv[], int argc)
{
 if (argc <= 3) {
  m4_warnx("Too few arguments to patsubst");
  return;
 }

 if (argv[3][0] == '\0') {
  const char *s;
  size_t len;
  if (argc > 4 && argv[4])
   len = strlen(argv[4]);
  else
   len = 0;
  for (s = argv[2]; *s != '\0'; s++) {
   addchars(argv[4], len);
   addchar(*s);
  }
 } else {
  int error;
  regex_t re;
  regmatch_t *pmatch;
  int mode = REG_EXTENDED;
  const char *source;
  size_t l = strlen(argv[3]);

  if (!mimic_gnu ||
      (argv[3][0] == '^') ||
      (l > 0 && argv[3][l-1] == '$'))
   mode |= REG_NEWLINE;

  source = mimic_gnu ? twiddle(argv[3]) : argv[3];
  error = regcomp(&re, source, mode);
  if (error != 0)
   exit_regerror(error, &re, source);

  pmatch = xreallocarray(((void*)0), re.re_nsub+1, sizeof(regmatch_t),
      ((void*)0));
  do_subst(argv[2], &re, source,
      argc > 4 && argv[4] != ((void*)0) ? argv[4] : "", pmatch);
  free(pmatch);
  regfree(&re);
 }
 pbstr(getstring());
}
