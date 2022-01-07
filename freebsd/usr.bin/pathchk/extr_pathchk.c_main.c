
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Pflag ;
 int check (char const*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int pflag ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, rval;
 const char *arg;

 while ((ch = getopt(argc, argv, "pP")) > 0) {
  switch (ch) {
  case 'p':
   pflag = 1;
   break;
  case 'P':
   Pflag = 1;
   break;
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 if (argc == 0)
  usage();

 rval = 0;
 while ((arg = *argv++) != ((void*)0))
  rval |= check(arg);

 exit(rval);
}
