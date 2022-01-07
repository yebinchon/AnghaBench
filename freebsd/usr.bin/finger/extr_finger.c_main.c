
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; } ;


 int LC_ALL ;
 int UNPRIV_NAME ;
 scalar_t__ UNPRIV_UGID ;
 scalar_t__ entries ;
 int err (int,char*) ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 struct passwd* getpwnam (int ) ;
 scalar_t__ getuid () ;
 int invoker_root ;
 int lflag ;
 int lflag_print () ;
 int loginlist () ;
 int now ;
 int oflag ;
 int option (int,char**) ;
 int printf (char*) ;
 scalar_t__ setgid (scalar_t__) ;
 int setlocale (int ,char*) ;
 int setpassent (int) ;
 scalar_t__ setuid (scalar_t__) ;
 int sflag ;
 int sflag_print () ;
 int time (int *) ;
 int userlist (int,char**) ;

int
main(int argc, char **argv)
{
 int envargc, argcnt;
 char *envargv[3];
 struct passwd *pw;
 static char myname[] = "finger";

 if (getuid() == 0 || geteuid() == 0) {
  invoker_root = 1;
  if ((pw = getpwnam(UNPRIV_NAME)) && pw->pw_uid > 0) {
   if (setgid(pw->pw_gid) != 0)
    err(1, "setgid()");
   if (setuid(pw->pw_uid) != 0)
    err(1, "setuid()");
  } else {
   if (setgid(UNPRIV_UGID) != 0)
    err(1, "setgid()");
   if (setuid(UNPRIV_UGID) != 0)
    err(1, "setuid()");
  }
 }

 (void) setlocale(LC_ALL, "");


 oflag = 1;




 if ((envargv[1] = getenv("FINGER"))) {
  envargc = 2;
  envargv[0] = myname;
  envargv[2] = ((void*)0);
  (void) option(envargc, envargv);
 }

 argcnt = option(argc, argv);
 argc -= argcnt;
 argv += argcnt;

 (void)time(&now);
 setpassent(1);
 if (!*argv) {





  if (!lflag)
   sflag = 1;
  loginlist();
  if (entries == 0)
   (void)printf("No one logged on.\n");
 } else {
  userlist(argc, argv);





  if (!sflag)
   lflag = 1;
 }
 if (entries) {
  if (lflag)
   lflag_print();
  else
   sflag_print();
 }
 return (0);
}
