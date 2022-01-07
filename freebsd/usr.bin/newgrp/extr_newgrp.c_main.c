
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addgroup (char*) ;
 int doshell () ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int euid ;
 int exit (int) ;
 int geteuid () ;
 int getopt (int,char**,char*) ;
 int * getpwuid (int ) ;
 int getuid () ;
 int loginshell () ;
 scalar_t__ optind ;
 int * pwd ;
 int restoregrps () ;
 scalar_t__ seteuid (int ) ;
 scalar_t__ setuid (int ) ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 int ch, login;

 if ((euid = geteuid()) != 0)
  warnx("need root permissions to function properly, check setuid bit");
 if (seteuid(getuid()) < 0)
  err(1, "seteuid");

 if ((pwd = getpwuid(getuid())) == ((void*)0))
  errx(1, "unknown user");

 login = 0;
 while ((ch = getopt(argc, argv, "-l")) != -1) {
  switch (ch) {
  case '-':
  case 'l':
   login = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 switch (argc) {
 case 0:
  restoregrps();
  break;
 case 1:
  addgroup(*argv);
  break;
 default:
  usage();
 }

 if (seteuid(euid) < 0)
  err(1, "seteuid");
 if (setuid(getuid()) < 0)
  err(1, "setuid");

 if (login)
  loginshell();
 else
  doshell();


 exit(1);
}
