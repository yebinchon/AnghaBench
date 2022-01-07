
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crid ;
 int crlookup (int ) ;
 int fprintf (int ,char*,int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int stderr ;
 int testit () ;
 int usage (char*) ;
 int verbose ;

int
main(int argc, char *argv[])
{
 int c, i;

 while ((c = getopt(argc, argv, "d:v")) != -1) {
  switch (c) {
  case 'd':
   crid = crlookup(optarg);
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   usage(argv[0]);
  }
 }
 argc -= optind, argv += optind;

 for (i = 0; i < 1000; i++) {
  fprintf(stderr, "test %d\n", i);
  testit();
 }
 return (0);
}
