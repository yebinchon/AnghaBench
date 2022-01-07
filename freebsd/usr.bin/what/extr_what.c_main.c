
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int printf (char*,char const*) ;
 scalar_t__ search (int,int,int *) ;
 int * stdin ;
 int usage () ;
 int warn (char*,char const*) ;

int
main(int argc, char *argv[])
{
 const char *file;
 FILE *in;
 bool found, qflag, sflag;
 int c;

 qflag = sflag = 0;

 while ((c = getopt(argc, argv, "qs")) != -1) {
  switch (c) {
  case 'q':
   qflag = 1;
   break;
  case 's':
   sflag = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 found = 0;

 if (argc == 0) {
  if (search(sflag, qflag, stdin))
   found = 1;
 } else {
  while (argc--) {
   file = *argv++;
   in = fopen(file, "r");
   if (in == ((void*)0)) {
    if (!qflag)
     warn("%s", file);
    continue;
   }
   if (!qflag)
    printf("%s:\n", file);
   if (search(sflag, qflag, in))
    found = 1;
   fclose(in);
  }
 }
 exit(found ? 0 : 1);
}
