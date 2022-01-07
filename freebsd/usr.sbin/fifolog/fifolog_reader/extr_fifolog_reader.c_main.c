
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_reader {int dummy; } ;
typedef int off_t ;
typedef int intmax_t ;


 int BUFSIZ ;
 int R ;
 int REG_NOSUB ;
 int Render ;
 int Usage () ;
 int ctime (int*) ;
 int err (int,char*,char* const) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 struct fifolog_reader* fifolog_reader_open (char* const) ;
 int fifolog_reader_process (struct fifolog_reader*,int ,int ,int *,int) ;
 int fifolog_reader_seek (struct fifolog_reader*,int) ;
 int * fo ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int get_date (void*) ;
 int getopt (int,char* const*,char*) ;
 int opt_B ;
 int opt_E ;
 int * opt_R ;
 char* opt_T ;
 char* opt_o ;
 void* optarg ;
 scalar_t__ optind ;
 int regcomp (int *,int *,int ) ;
 int regerror (int,int *,char*,int) ;
 int stderr ;
 int * stdout ;
 int strcmp (char*,char*) ;
 int strtoul (void*,int *,int ) ;
 int time (int*) ;

int
main(int argc, char * const *argv)
{
 int ch, i;
 off_t o;
 struct fifolog_reader *fl;

 time(&opt_E);
 opt_o = "-";
 while ((ch = getopt(argc, argv, "b:B:e:E:o:R:tT:")) != -1) {
  switch (ch) {
  case 'b':
   opt_B = strtoul(optarg, ((void*)0), 0);
   break;
  case 'B':
   opt_B = get_date(optarg);
   if (opt_B == -1)
    errx(1, "Didn't understand \"%s\"", optarg);
   break;
  case 'e':
   opt_E = strtoul(optarg, ((void*)0), 0);
   break;
  case 'E':
   opt_E = get_date(optarg);
   if (opt_E == -1)
    errx(1, "Didn't understand \"%s\"", optarg);
   break;
  case 'o':
   opt_o = optarg;
   break;
  case 'R':
   opt_R = optarg;
   break;
  case 't':
   opt_T = "%Y%m%d%H%M%S";
   break;
  case 'T':
   opt_T = optarg;
   break;
  default:
   Usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (opt_R != ((void*)0)) {
  i = regcomp(&R, opt_R, REG_NOSUB);
  if (i != 0) {
   char buf[BUFSIZ];
   (void)regerror(i, &R, buf, sizeof buf);
   fprintf(stderr, "-R argument: %s\n", buf);
   exit (1);
  }
 }

 if (argv[0] == ((void*)0))
  Usage();

 fprintf(stderr, "From\t%jd %s", (intmax_t)opt_B, ctime(&opt_B));
 fprintf(stderr, "To\t%jd %s", (intmax_t)opt_E, ctime(&opt_E));
 if (opt_B >= opt_E)
  errx(1, "Begin time not before End time");

 fl = fifolog_reader_open(argv[0]);

 if (!strcmp(opt_o, "-"))
  fo = stdout;
 else {
  fo = fopen(opt_o, "w");
  if (fo == ((void*)0))
   err(1, "Cannot open: %s", argv[1]);
 }

 o = fifolog_reader_seek(fl, opt_B);
 fifolog_reader_process(fl, o, Render, ((void*)0), opt_E);
 return (0);
}
