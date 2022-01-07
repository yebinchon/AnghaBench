
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int login_cap_t ;
struct TYPE_4__ {char* pw_shell; char* pw_dir; char* pw_name; int pw_uid; } ;


 int LOGIN_SETENV ;
 int LOGIN_SETPATH ;
 int LOGIN_SETUMASK ;
 char* _PATH_BSHELL ;
 scalar_t__ asprintf (char**,char*,char const*) ;
 char** calloc (int,int) ;
 scalar_t__ chdir (char*) ;
 char** environ ;
 int err (int,char*,...) ;
 int execv (char const*,char**) ;
 char* getenv (char*) ;
 int login_close (int *) ;
 int * login_getpwclass (TYPE_1__*) ;
 TYPE_1__* pwd ;
 int setenv (char*,char const*,int) ;
 int setusercontext (int *,TYPE_1__*,int ,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static void
loginshell(void)
{
 char *args[2], **cleanenv, *term, *ticket;
 const char *shell;
 login_cap_t *lc;

 shell = pwd->pw_shell;
 if (*shell == '\0')
  shell = _PATH_BSHELL;
 if (chdir(pwd->pw_dir) < 0) {
  warn("%s", pwd->pw_dir);
  chdir("/");
 }

 term = getenv("TERM");
 ticket = getenv("KRBTKFILE");

 if ((cleanenv = calloc(20, sizeof(char *))) == ((void*)0))
  err(1, "calloc");
 *cleanenv = ((void*)0);
 environ = cleanenv;

 lc = login_getpwclass(pwd);
 setusercontext(lc, pwd, pwd->pw_uid,
     LOGIN_SETPATH|LOGIN_SETUMASK|LOGIN_SETENV);
 login_close(lc);
 setenv("USER", pwd->pw_name, 1);
 setenv("SHELL", shell, 1);
 setenv("HOME", pwd->pw_dir, 1);
 if (term != ((void*)0))
  setenv("TERM", term, 1);
 if (ticket != ((void*)0))
  setenv("KRBTKFILE", ticket, 1);

 if (asprintf(args, "-%s", shell) < 0)
  err(1, "asprintf");
 args[1] = ((void*)0);

 execv(shell, args);
 err(1, "%s", shell);
}
