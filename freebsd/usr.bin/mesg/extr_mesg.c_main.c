
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int S_IWGRP ;
 int chmod (char*,int) ;
 int err (int,char*,...) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int puts (char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* ttyname (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct stat sb;
 char *tty;
 int ch;

 while ((ch = getopt(argc, argv, "")) != -1)
  switch (ch) {
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if ((tty = ttyname(STDIN_FILENO)) == ((void*)0) &&
     (tty = ttyname(STDOUT_FILENO)) == ((void*)0) &&
     (tty = ttyname(STDERR_FILENO)) == ((void*)0))
  err(2, "ttyname");
 if (stat(tty, &sb) < 0)
  err(2, "%s", tty);

 if (*argv == ((void*)0)) {
  if (sb.st_mode & S_IWGRP) {
   (void)puts("is y");
   exit(0);
  }
  (void)puts("is n");
  exit(1);
 }

 switch (*argv[0]) {
 case 'y':
  if (chmod(tty, sb.st_mode | S_IWGRP) < 0)
   err(2, "%s", tty);
  exit(0);
 case 'n':
  if (chmod(tty, sb.st_mode & ~S_IWGRP) < 0)
   err(2, "%s", tty);
  exit(1);
 }

 usage();
 return(0);
}
