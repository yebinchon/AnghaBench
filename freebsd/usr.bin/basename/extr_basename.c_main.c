
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_ALL ;
 char* basename (char*) ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 int err (int,char*,...) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int setlocale (int ,char*) ;
 int stripsuffix (char*,char*,size_t) ;
 size_t strlen (char*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 char *p, *suffix;
 size_t suffixlen;
 int aflag, ch;

 setlocale(LC_ALL, "");

 if (caph_limit_stdio() < 0 || caph_enter() < 0)
  err(1, "capsicum");

 aflag = 0;
 suffix = ((void*)0);
 suffixlen = 0;

 while ((ch = getopt(argc, argv, "as:")) != -1)
  switch(ch) {
  case 'a':
   aflag = 1;
   break;
  case 's':
   suffix = optarg;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();

 if (!*argv[0]) {
  printf("\n");
  exit(0);
 }
 if ((p = basename(argv[0])) == ((void*)0))
  err(1, "%s", argv[0]);
 if ((suffix == ((void*)0) && !aflag) && argc == 2) {
  suffix = argv[1];
  argc--;
 }
 if (suffix != ((void*)0))
  suffixlen = strlen(suffix);
 while (argc--) {
  if ((p = basename(*argv)) == ((void*)0))
   err(1, "%s", argv[0]);
  stripsuffix(p, suffix, suffixlen);
  argv++;
  (void)printf("%s\n", p);
 }
 exit(0);
}
