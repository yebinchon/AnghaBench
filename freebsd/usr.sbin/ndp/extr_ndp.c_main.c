
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int delete (char*) ;
 int dump (int ,int) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int file (char*) ;
 int get (char*) ;
 int getdefif () ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int gmt2local (int ) ;
 int harmonize_rtr () ;
 int if_nametoindex (char*) ;
 int ifinfo (char*,int,char**) ;
 int nflag ;
 char* optarg ;
 scalar_t__ optind ;
 int pfx_flush () ;
 int pid ;
 int plist () ;
 int repeat ;
 int rtr_flush () ;
 int rtrlist () ;
 int set (int,char**) ;
 int setdefif (char*) ;
 int strcmp (char*,char*) ;
 int tflag ;
 int thiszone ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ch, mode = 0;
 char *arg = ((void*)0);

 pid = getpid();
 thiszone = gmt2local(0);
 while ((ch = getopt(argc, argv, "acd:f:Ii:nprstA:HPR")) != -1)
  switch (ch) {
  case 'a':
  case 'c':
  case 'p':
  case 'r':
  case 'H':
  case 'P':
  case 'R':
  case 's':
  case 'I':
   if (mode) {
    usage();

   }
   mode = ch;
   arg = ((void*)0);
   break;
  case 'f':
   exit(file(optarg) ? 1 : 0);
  case 'd':
  case 'i':
   if (mode) {
    usage();

   }
   mode = ch;
   arg = optarg;
   break;
  case 'n':
   nflag = 1;
   break;
  case 't':
   tflag = 1;
   break;
  case 'A':
   if (mode) {
    usage();

   }
   mode = 'a';
   repeat = atoi(optarg);
   if (repeat < 0) {
    usage();

   }
   break;
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 switch (mode) {
 case 'a':
 case 'c':
  if (argc != 0) {
   usage();

  }
  dump(0, mode == 'c');
  break;
 case 'd':
  if (argc != 0) {
   usage();

  }
  delete(arg);
  break;
 case 'I':
  errx(1, "not supported yet");


 case 'p':
  if (argc != 0) {
   usage();

  }
  plist();
  break;
 case 'i':
  ifinfo(arg, argc, argv);
  break;
 case 'r':
  if (argc != 0) {
   usage();

  }
  rtrlist();
  break;
 case 's':
  if (argc < 2 || argc > 4)
   usage();
  exit(set(argc, argv) ? 1 : 0);
 case 'H':
  if (argc != 0) {
   usage();

  }
  harmonize_rtr();
  break;
 case 'P':
  if (argc != 0) {
   usage();

  }
  pfx_flush();
  break;
 case 'R':
  if (argc != 0) {
   usage();

  }
  rtr_flush();
  break;
 case 0:
  if (argc != 1) {
   usage();

  }
  get(argv[0]);
  break;
 }
 exit(0);
}
