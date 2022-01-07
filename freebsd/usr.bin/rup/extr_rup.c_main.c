
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allhosts () ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int onehost (char*) ;
 int optind ;
 int setlinebuf (int ) ;
 int stdout ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch;

 while ((ch = getopt(argc, argv, "?")) != -1)
  switch (ch) {
  default:
   usage();
  }

 setlinebuf(stdout);
 if (argc == optind)
  allhosts();
 else {
  for (; optind < argc; optind++)
   (void) onehost(argv[optind]);
 }
 exit(0);
}
