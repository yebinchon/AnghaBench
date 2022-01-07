
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
struct passwd {int dummy; } ;
typedef scalar_t__ intmax_t ;


 int ENDPWENT () ;
 int EXIT_SUCCESS ;
 int EX_DATAERR ;
 int EX_NOUSER ;
 struct passwd* GETPWENT () ;
 struct passwd* GETPWNAM (int ) ;
 struct passwd* GETPWUID (scalar_t__) ;
 int SETPWENT () ;
 int UID_MAX ;
 int _PATH_DEVNULL ;
 int errx (int ,char*,...) ;
 struct passwd fakeuser ;
 int freopen (int ,char*,int ) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int print_user (struct passwd*,int,int) ;
 scalar_t__ pw_checkid (char*,int ) ;
 int pw_checkname (char*,int ) ;
 int stderr ;
 size_t strspn (char*,char*) ;

int
pw_user_show(int argc, char **argv, char *arg1)
{
 struct passwd *pwd = ((void*)0);
 char *name = ((void*)0);
 intmax_t id = -1;
 int ch;
 bool all = 0;
 bool pretty = 0;
 bool force = 0;
 bool v7 = 0;
 bool quiet = 0;

 if (arg1 != ((void*)0)) {
  if (arg1[strspn(arg1, "0123456789")] == '\0')
   id = pw_checkid(arg1, UID_MAX);
  else
   name = arg1;
 }

 while ((ch = getopt(argc, argv, "C:qn:u:FPa7")) != -1) {
  switch (ch) {
  case 'C':

   break;
  case 'q':
   quiet = 1;
   break;
  case 'n':
   name = optarg;
   break;
  case 'u':
   id = pw_checkid(optarg, UID_MAX);
   break;
  case 'F':
   force = 1;
   break;
  case 'P':
   pretty = 1;
   break;
  case 'a':
   all = 1;
   break;
  case '7':
   v7 = 1;
   break;
  }
 }

 if (quiet)
  freopen(_PATH_DEVNULL, "w", stderr);

 if (all) {
  SETPWENT();
  while ((pwd = GETPWENT()) != ((void*)0))
   print_user(pwd, pretty, v7);
  ENDPWENT();
  return (EXIT_SUCCESS);
 }

 if (id < 0 && name == ((void*)0))
  errx(EX_DATAERR, "username or id required");

 pwd = (name != ((void*)0)) ? GETPWNAM(pw_checkname(name, 0)) : GETPWUID(id);
 if (pwd == ((void*)0)) {
  if (force) {
   pwd = &fakeuser;
  } else {
   if (name == ((void*)0))
    errx(EX_NOUSER, "no such uid `%ju'",
        (uintmax_t) id);
   errx(EX_NOUSER, "no such user `%s'", name);
  }
 }

 return (print_user(pwd, pretty, v7));
}
