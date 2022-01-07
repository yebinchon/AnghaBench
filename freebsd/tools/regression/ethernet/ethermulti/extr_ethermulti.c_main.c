
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRIV_ASIS ;
 int dorandom ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,int,int) ;
 int geteuid () ;
 int getopt (int,char**,char*) ;
 int getuid () ;
 int * ifname ;
 int * optarg ;
 int printf (char*) ;
 int stderr ;
 int testsuite (int ) ;
 int usage () ;
 int verbose ;

int
main(int argc, char *argv[])
{
 int ch;

 while ((ch = getopt(argc, argv, "i:rv")) != -1) {
  switch (ch) {
  case 'i':
   ifname = optarg;
   break;
  case 'r':
   dorandom = 1;
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   usage();
  }
 }
 if (ifname == ((void*)0))
  usage();

 printf("1..1\n");
 if (geteuid() != 0) {
  errx(1, "Not running as root, can't run tests as non-root");

 } else {
  fprintf(stderr,
      "Running tests with ruid %d euid %d sock uid 0\n",
      getuid(), geteuid());
  testsuite(PRIV_ASIS);
 }
 printf("ok 1 - ethermulti\n");
 exit(0);
}
