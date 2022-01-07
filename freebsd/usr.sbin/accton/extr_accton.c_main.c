
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acct (char*) ;
 int err (int,char*,...) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch;

 while ((ch = getopt(argc, argv, "")) != -1)
  switch(ch) {
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 switch(argc) {
 case 0:
  if (acct(((void*)0)))
   err(1, ((void*)0));
  break;
 case 1:
  if (acct(*argv))
   err(1, "%s", *argv);
  break;
 default:
  usage();
 }
 exit(0);
}
