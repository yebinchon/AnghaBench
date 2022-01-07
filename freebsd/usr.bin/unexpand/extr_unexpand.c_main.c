
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_CTYPE ;
 int all ;
 int exit (int) ;
 int * freopen (char*,char*,int ) ;
 int getopt (int,char**,char*) ;
 int getstops (int ) ;
 int nstops ;
 int optarg ;
 scalar_t__ optind ;
 int setlocale (int ,char*) ;
 int stdin ;
 int tabify (char*) ;
 int* tabstops ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 int ch, failed;
 char *filename;

 setlocale(LC_CTYPE, "");

 nstops = 1;
 tabstops[0] = 8;
 while ((ch = getopt(argc, argv, "at:")) != -1) {
  switch (ch) {
  case 'a':
   all = 1;
   break;
  case 't':
   getstops(optarg);
   all = 1;
   break;
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 failed = 0;
 if (argc == 0)
  failed |= tabify("stdin");
 else {
  while ((filename = *argv++) != ((void*)0)) {
   if (freopen(filename, "r", stdin) == ((void*)0)) {
    warn("%s", filename);
    failed = 1;
   } else
    failed |= tabify(filename);
  }
 }
 exit(failed != 0);
}
