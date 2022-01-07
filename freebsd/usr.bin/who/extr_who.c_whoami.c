
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut ;
struct utmpx {scalar_t__ ut_type; int ut_tv; int ut_user; int ut_line; } ;
struct passwd {char* pw_name; } ;


 int STDIN_FILENO ;
 scalar_t__ USER_PROCESS ;
 int _PATH_DEV ;
 struct passwd* getpwuid (int ) ;
 int gettimeofday (int *,int *) ;
 int getuid () ;
 struct utmpx* getutxline (struct utmpx*) ;
 int memset (struct utmpx*,int ,int) ;
 int row (struct utmpx*) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 char* ttyname (int ) ;

__attribute__((used)) static void
whoami(void)
{
 struct utmpx ut, *utx;
 struct passwd *pwd;
 const char *name, *tty;

 if ((tty = ttyname(STDIN_FILENO)) == ((void*)0))
  tty = "tty??";
 else if (strncmp(tty, _PATH_DEV, sizeof _PATH_DEV - 1) == 0)
  tty += sizeof _PATH_DEV - 1;
 strlcpy(ut.ut_line, tty, sizeof ut.ut_line);


 if ((utx = getutxline(&ut)) != ((void*)0) && utx->ut_type == USER_PROCESS) {
  row(utx);
  return;
 }


 memset(&ut, 0, sizeof(ut));
 if ((pwd = getpwuid(getuid())) != ((void*)0))
  name = pwd->pw_name;
 else
  name = "?";
 strlcpy(ut.ut_user, name, sizeof ut.ut_user);
 gettimeofday(&ut.ut_tv, ((void*)0));
 row(&ut);
}
