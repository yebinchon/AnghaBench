
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,int) ;
 int prlongname (char*) ;
 char** process (char const*,char*,char**) ;
 int strcmp (char const*,char*) ;
 int tgetent (char*,char*) ;
 int tgetflag (char const*) ;
 int tgetnum (char const*) ;
 scalar_t__ tgetstr (char const*,char**) ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ch, exitval, n;
 char *cptr, *term, buf[1024], tbuf[1024];
 const char *p;

 term = ((void*)0);
 while ((ch = getopt(argc, argv, "T:")) != -1)
  switch(ch) {
  case 'T':
   term = optarg;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();

 if (!term && !(term = getenv("TERM")))
errx(2, "no terminal type specified and no TERM environmental variable.");
 if (tgetent(tbuf, term) != 1)
  err(3, "tgetent failure");
 for (exitval = 0; (p = *argv) != ((void*)0); ++argv) {
  switch (*p) {
  case 'c':
   if (!strcmp(p, "clear"))
    p = "cl";
   break;
  case 'i':
   if (!strcmp(p, "init"))
    p = "is";
   break;
  case 'l':
   if (!strcmp(p, "longname")) {
    prlongname(tbuf);
    continue;
   }
   break;
  case 'r':
   if (!strcmp(p, "reset"))
    p = "rs";
   break;
  }
  cptr = buf;
  if (tgetstr(p, &cptr))
   argv = process(p, buf, argv);
  else if ((n = tgetnum(p)) != -1)
   (void)printf("%d\n", n);
  else
   exitval = !tgetflag(p);
 }
 exit(exitval);
}
