
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 char* dirname (char*) ;
 int err (int,char*,...) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 char *p;
 int ch;

 if (caph_limit_stdio() < 0 || caph_enter() < 0)
  err(1, "capsicum");

 while ((ch = getopt(argc, argv, "")) != -1)
  switch(ch) {
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();

 while (argc--) {
  if ((p = dirname(*argv)) == ((void*)0))
   err(1, "%s", *argv);
  argv++;
  (void)printf("%s\n", p);
 }
 exit(0);
}
