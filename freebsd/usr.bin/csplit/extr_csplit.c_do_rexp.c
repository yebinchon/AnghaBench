
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;
typedef scalar_t__ intmax_t ;
typedef int FILE ;


 scalar_t__ EOF ;
 int REG_BASIC ;
 int REG_NOSUB ;
 int currfile ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*,...) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fputs (char*,int *) ;
 int free (char*) ;
 scalar_t__ ftello (int *) ;
 char* get_line () ;
 int * newfile () ;
 int printf (char*,scalar_t__) ;
 scalar_t__ regcomp (int *,char*,int) ;
 scalar_t__ regexec (int *,char*,int ,int *,int ) ;
 int regfree (int *) ;
 int sflag ;
 char* strdup (char const*) ;
 char* strrchr (char*,char const) ;
 long strtol (char*,char**,int) ;
 int * tmpfile () ;
 int toomuch (int *,long) ;
 scalar_t__ truncofs ;

__attribute__((used)) static void
do_rexp(const char *expr)
{
 regex_t cre;
 intmax_t nwritten;
 long ofs;
 int first;
 char *ecopy, *ep, *p, *pofs, *re;
 FILE *ofp;

 if ((ecopy = strdup(expr)) == ((void*)0))
  err(1, "strdup");

 re = ecopy + 1;
 if ((pofs = strrchr(ecopy, *expr)) == ((void*)0) || pofs[-1] == '\\')
  errx(1, "%s: missing trailing %c", expr, *expr);
 *pofs++ = '\0';

 if (*pofs != '\0') {
  errno = 0;
  ofs = strtol(pofs, &ep, 10);
  if (*ep != '\0' || errno != 0)
   errx(1, "%s: bad offset", pofs);
 } else
  ofs = 0;

 if (regcomp(&cre, re, REG_BASIC|REG_NOSUB) != 0)
  errx(1, "%s: bad regular expression", re);

 if (*expr == '/')

  ofp = newfile();
 else {

  if ((ofp = tmpfile()) == ((void*)0))
   err(1, "tmpfile");
 }


 first = 1;
 while ((p = get_line()) != ((void*)0)) {
  if (fputs(p, ofp) == EOF)
   break;
  if (!first && regexec(&cre, p, 0, ((void*)0), 0) == 0)
   break;
  first = 0;
 }

 if (p == ((void*)0)) {
  toomuch(((void*)0), 0);
  errx(1, "%s: no match", re);
 }

 if (ofs <= 0) {




  if (p != ((void*)0)) {
   toomuch(ofp, -ofs + 1);
   nwritten = (intmax_t)truncofs;
  } else
   nwritten = (intmax_t)ftello(ofp);
 } else {




  while (--ofs > 0 && (p = get_line()) != ((void*)0))
   fputs(p, ofp);
  toomuch(((void*)0), 0);
  nwritten = (intmax_t)ftello(ofp);
  if (fclose(ofp) != 0)
   err(1, "%s", currfile);
 }

 if (!sflag && *expr == '/')
  printf("%jd\n", nwritten);

 regfree(&cre);
 free(ecopy);
}
