
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addarg (char*) ;
 int addlib (char*) ;
 int * args ;
 scalar_t__ cargs ;
 int err (int,char*) ;
 int execv (char*,int *) ;
 int getopt (int,char**,char*) ;
 scalar_t__ nargs ;
 int optind ;
 scalar_t__ strncmp (char*,char*,int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, i;

 args = ((void*)0);
 cargs = nargs = 0;

 while ((ch = getopt(argc, argv, "cD:EgI:L:o:O:sU:l:")) != -1) {
  if (ch == 'l') {

   if (argv[optind - 1][0] == '-')
    optind -= 1;
   else
    optind -= 2;
   break;
  } else if (ch == '?')
   usage();
 }

 addarg("/usr/bin/cc");
 addarg("-std=iso9899:1999");
 addarg("-pedantic");
 for (i = 1; i < optind; i++)
  addarg(argv[i]);
 while (i < argc) {
  if (strncmp(argv[i], "-l", 2) == 0) {
   if (argv[i][2] != '\0')
    addlib(argv[i++] + 2);
   else {
    if (argv[++i] == ((void*)0))
     usage();
    addlib(argv[i++]);
   }
  } else
   addarg(argv[i++]);
 }
 execv("/usr/bin/cc", args);
 err(1, "/usr/bin/cc");
}
