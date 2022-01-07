
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;
typedef int FILE ;


 scalar_t__ EOF ;
 int currfile ;
 int err (int,char*,int ) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fputs (char*,int *) ;
 scalar_t__ ftello (int *) ;
 char* get_line () ;
 long lineno ;
 int maxfiles ;
 int * newfile () ;
 int nfiles ;
 int printf (char*,int ) ;
 int reps ;
 int sflag ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static void
do_lineno(const char *expr)
{
 long lastline, tgtline;
 char *ep, *p;
 FILE *ofp;

 errno = 0;
 tgtline = strtol(expr, &ep, 10);
 if (tgtline <= 0 || errno != 0 || *ep != '\0')
  errx(1, "%s: bad line number", expr);
 lastline = tgtline;
 if (lastline <= lineno)
  errx(1, "%s: can't go backwards", expr);

 while (nfiles < maxfiles - 1) {
  ofp = newfile();
  while (lineno + 1 != lastline) {
   if ((p = get_line()) == ((void*)0))
    errx(1, "%ld: out of range", lastline);
   if (fputs(p, ofp) == EOF)
    break;
  }
  if (!sflag)
   printf("%jd\n", (intmax_t)ftello(ofp));
  if (fclose(ofp) != 0)
   err(1, "%s", currfile);
  if (reps-- == 0)
   break;
  lastline += tgtline;
 }
}
