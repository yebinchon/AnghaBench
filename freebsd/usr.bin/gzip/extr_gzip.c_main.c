
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* zipped; int ziplen; } ;


 int NUM_SUFFIXES ;
 int Nflag ;
 int OPT_LIST ;
 int SUFFIX_MAXLEN ;
 int cflag ;
 int dflag ;
 int display_license () ;
 int display_version () ;
 int errx (int,char*,char*) ;
 int exit (int ) ;
 int exit_value ;
 int fflag ;
 int fprintf (int ,char*,char const*) ;
 char* getenv (char*) ;
 int getopt_long (int,char**,int ,int ,int *) ;
 char* getprogname () ;
 int handle_pathname (char*) ;
 int handle_stdin () ;
 int handle_stdout () ;
 int kflag ;
 int lflag ;
 int longopts ;
 int nflag ;
 int numflag ;
 char* optarg ;
 scalar_t__ optind ;
 int prepend_gzip (char*,int*,char***) ;
 int print_list (int,int ,char*,int ) ;
 scalar_t__ qflag ;
 int rflag ;
 int setup_signals () ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;
 TYPE_1__* suffixes ;
 int tflag ;
 int usage () ;
 int vflag ;

int
main(int argc, char **argv)
{
 const char *progname = getprogname();

 char *gzip;
 int len;

 int ch;

 setup_signals();


 if ((gzip = getenv("GZIP")) != ((void*)0))
  prepend_gzip(gzip, &argc, &argv);






 if (strcmp(progname, "gunzip") == 0)
  dflag = 1;
 else if (strcmp(progname, "zcat") == 0 ||
   strcmp(progname, "gzcat") == 0)
  dflag = cflag = 1;







 while ((ch = getopt_long(argc, argv, "123456789acdfhklLNnqrS:tVv", longopts, ((void*)0))) != -1) {
  switch (ch) {
  case '1': case '2': case '3':
  case '4': case '5': case '6':
  case '7': case '8': case '9':
   numflag = ch - '0';
   break;
  case 'c':
   cflag = 1;
   break;
  case 'd':
   dflag = 1;
   break;
  case 'l':
   lflag = 1;
   dflag = 1;
   break;
  case 'V':
   display_version();


  case 'a':
   fprintf(stderr, "%s: option --ascii ignored on this system\n", progname);
   break;
  case 'f':
   fflag = 1;
   break;
  case 'k':
   kflag = 1;
   break;
  case 'L':
   display_license();

  case 'N':
   nflag = 0;
   Nflag = 1;
   break;
  case 'n':
   nflag = 1;
   Nflag = 0;
   break;
  case 'q':
   qflag = 1;
   break;
  case 'r':
   rflag = 1;
   break;
  case 'S':
   len = strlen(optarg);
   if (len != 0) {
    if (len > SUFFIX_MAXLEN)
     errx(1, "incorrect suffix: '%s': too long", optarg);
    suffixes[0].zipped = optarg;
    suffixes[0].ziplen = len;
   } else {
    suffixes[NUM_SUFFIXES - 1].zipped = "";
    suffixes[NUM_SUFFIXES - 1].ziplen = 0;
   }
   break;
  case 't':
   cflag = 1;
   tflag = 1;
   dflag = 1;
   break;
  case 'v':
   vflag = 1;
   break;

  default:
   usage();

  }
 }
 argv += optind;
 argc -= optind;

 if (argc == 0) {
  if (dflag)
   handle_stdin();
  else
   handle_stdout();
 } else {
  do {
   handle_pathname(argv[0]);
  } while (*++argv);
 }

 if (qflag == 0 && lflag && argc > 1)
  print_list(-1, 0, "(totals)", 0);

 exit(exit_value);
}
