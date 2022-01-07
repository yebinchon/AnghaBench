
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; scalar_t__ sa_flags; } ;
typedef int intmax_t ;
typedef int FILE ;


 scalar_t__ EOF ;
 int LC_ALL ;
 int LONG_MAX ;
 scalar_t__ PATH_MAX ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int atexit (int ) ;
 int cleanup ;
 char* currfile ;
 int do_lineno (char const*) ;
 int do_rexp (char const*) ;
 int doclean ;
 int err (int,char*,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 scalar_t__ fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fputs (char*,int *) ;
 scalar_t__ ftello (int *) ;
 char* get_line () ;
 int getopt (int,char**,char*) ;
 int handlesig ;
 int * infile ;
 char* infn ;
 scalar_t__ isdigit (unsigned char) ;
 int kflag ;
 scalar_t__ lineno ;
 int maxfiles ;
 int * newfile () ;
 int nfiles ;
 char const* optarg ;
 scalar_t__ optind ;
 int * overfile ;
 char const* prefix ;
 int printf (char*,int ) ;
 scalar_t__ reps ;
 int setlocale (int ,char*) ;
 int sflag ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char const*) ;
 void* strtol (char const*,char**,int) ;
 long sufflen ;
 int toomuch (int *,int ) ;
 scalar_t__ truncofs ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct sigaction sa;
 long i;
 int ch;
 const char *expr;
 char *ep, *p;
 FILE *ofp;

 setlocale(LC_ALL, "");

 kflag = sflag = 0;
 prefix = "xx";
 sufflen = 2;
 while ((ch = getopt(argc, argv, "ksf:n:")) > 0) {
  switch (ch) {
  case 'f':
   prefix = optarg;
   break;
  case 'k':
   kflag = 1;
   break;
  case 'n':
   errno = 0;
   sufflen = strtol(optarg, &ep, 10);
   if (sufflen <= 0 || *ep != '\0' || errno != 0)
    errx(1, "%s: bad suffix length", optarg);
   break;
  case 's':
   sflag = 1;
   break;
  default:
   usage();

  }
 }

 if (sufflen + strlen(prefix) >= PATH_MAX)
  errx(1, "name too long");

 argc -= optind;
 argv += optind;

 if ((infn = *argv++) == ((void*)0))
  usage();
 if (strcmp(infn, "-") == 0) {
  infile = stdin;
  infn = "stdin";
 } else if ((infile = fopen(infn, "r")) == ((void*)0))
  err(1, "%s", infn);

 if (!kflag) {
  doclean = 1;
  atexit(cleanup);
  sa.sa_flags = 0;
  sa.sa_handler = handlesig;
  sigemptyset(&sa.sa_mask);
  sigaddset(&sa.sa_mask, SIGHUP);
  sigaddset(&sa.sa_mask, SIGINT);
  sigaddset(&sa.sa_mask, SIGTERM);
  sigaction(SIGHUP, &sa, ((void*)0));
  sigaction(SIGINT, &sa, ((void*)0));
  sigaction(SIGTERM, &sa, ((void*)0));
 }

 lineno = 0;
 nfiles = 0;
 truncofs = 0;
 overfile = ((void*)0);


 for (maxfiles = 1, i = 0; i < sufflen; i++) {
  if (maxfiles > LONG_MAX / 10)
   errx(1, "%ld: suffix too long (limit %ld)",
       sufflen, i);
  maxfiles *= 10;
 }


 while (nfiles < maxfiles - 1 && (expr = *argv++) != ((void*)0)) {

  if (*argv != ((void*)0) && **argv == '{') {
   errno = 0;
   reps = strtol(*argv + 1, &ep, 10);
   if (reps < 0 || *ep != '}' || errno != 0)
    errx(1, "%s: bad repetition count", *argv + 1);
   argv++;
  } else
   reps = 0;

  if (*expr == '/' || *expr == '%') {
   do
    do_rexp(expr);
   while (reps-- != 0 && nfiles < maxfiles - 1);
  } else if (isdigit((unsigned char)*expr))
   do_lineno(expr);
  else
   errx(1, "%s: unrecognised pattern", expr);
 }


 if (!feof(infile)) {
  ofp = newfile();
  while ((p = get_line()) != ((void*)0) && fputs(p, ofp) != EOF)
   ;
  if (!sflag)
   printf("%jd\n", (intmax_t)ftello(ofp));
  if (fclose(ofp) != 0)
   err(1, "%s", currfile);
 }

 toomuch(((void*)0), 0);
 doclean = 0;

 return (0);
}
