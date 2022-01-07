
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int S_IXGRP ;
 int S_IXUSR ;
 int chmod (char*,int) ;
 int err (int,char*,...) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* ttyname (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct stat sb;
 int ch;
 char *name;


 while ((ch = getopt(argc, argv, "")) != -1)
  switch(ch) {
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if ((name = ttyname(STDIN_FILENO)) == ((void*)0) &&
     (name = ttyname(STDOUT_FILENO)) == ((void*)0) &&
     (name = ttyname(STDERR_FILENO)) == ((void*)0))
  err(2, "unknown tty");

 if (stat(name, &sb))
  err(2, "stat");

 if (*argv == ((void*)0)) {
  (void)printf("is %s\n",
      sb.st_mode & S_IXUSR ? "y" :
      sb.st_mode & S_IXGRP ? "b" : "n");
  return (sb.st_mode & (S_IXUSR | S_IXGRP) ? 0 : 1);

 }

 switch (argv[0][0]) {
 case 'n':
  if (chmod(name, sb.st_mode & ~(S_IXUSR | S_IXGRP)) < 0)
   err(2, "%s", name);
  break;
 case 'y':
  if (chmod(name, (sb.st_mode & ~(S_IXUSR | S_IXGRP)) | S_IXUSR)
      < 0)
   err(2, "%s", name);
  break;
 case 'b':
  if (chmod(name, (sb.st_mode & ~(S_IXUSR | S_IXGRP)) | S_IXGRP)
      < 0)
   err(2, "%s", name);
  break;
 default:
  usage();
 }
 return (sb.st_mode & (S_IXUSR | S_IXGRP) ? 0 : 1);
}
