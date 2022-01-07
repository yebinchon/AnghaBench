
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base64 ;
 int basename (char*) ;
 int cflag ;
 int decode () ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int getopt (int,char**,char*) ;
 int iflag ;
 char* infile ;
 int * infp ;
 int oflag ;
 int optarg ;
 scalar_t__ optind ;
 int outfile ;
 int pflag ;
 int rflag ;
 int sflag ;
 int * stdin ;
 scalar_t__ strcmp (int ,char*) ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 int rval, ch;

 if (strcmp(basename(argv[0]), "b64decode") == 0)
  base64 = 1;

 while ((ch = getopt(argc, argv, "cimo:prs")) != -1) {
  switch (ch) {
  case 'c':
   if (oflag || rflag)
    usage();
   cflag = 1;
   break;
  case 'i':
   iflag = 1;
   break;
  case 'm':
   base64 = 1;
   break;
  case 'o':
   if (cflag || pflag || rflag || sflag)
    usage();
   oflag = 1;
   sflag = 1;
   outfile = optarg;
   break;
  case 'p':
   if (oflag)
    usage();
   pflag = 1;
   break;
  case 'r':
   if (cflag || oflag)
    usage();
   rflag = 1;
   break;
  case 's':
   if (oflag)
    usage();
   sflag = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (*argv != ((void*)0)) {
  rval = 0;
  do {
   infp = fopen(infile = *argv, "r");
   if (infp == ((void*)0)) {
    warn("%s", *argv);
    rval = 1;
    continue;
   }
   rval |= decode();
   fclose(infp);
  } while (*++argv);
 } else {
  infile = "stdin";
  infp = stdin;
  rval = decode();
 }
 exit(rval);
}
