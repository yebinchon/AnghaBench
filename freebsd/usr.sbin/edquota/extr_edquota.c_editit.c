
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 scalar_t__ EPROCLIM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 char* _PATH_VI ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int execlp (char const*,char const*,char*,char*) ;
 int fork () ;
 char* getenv (char*) ;
 int getgid () ;
 int getuid () ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setuid (int ) ;
 long sigblock (int) ;
 int sigmask (int ) ;
 int sigsetmask (long) ;
 int sleep (int) ;
 int waitpid (int,int*,int ) ;
 int warn (char*) ;
 int warnx (char*) ;

int
editit(char *tmpf)
{
 long omask;
 int pid, status;

 omask = sigblock(sigmask(SIGINT)|sigmask(SIGQUIT)|sigmask(SIGHUP));
 top:
 if ((pid = fork()) < 0) {

  if (errno == EPROCLIM) {
   warnx("you have too many processes");
   return(0);
  }
  if (errno == EAGAIN) {
   sleep(1);
   goto top;
  }
  warn("fork");
  return (0);
 }
 if (pid == 0) {
  const char *ed;

  sigsetmask(omask);
  if (setgid(getgid()) != 0)
   err(1, "setgid failed");
  if (setuid(getuid()) != 0)
   err(1, "setuid failed");
  if ((ed = getenv("EDITOR")) == (char *)0)
   ed = _PATH_VI;
  execlp(ed, ed, tmpf, (char *)0);
  err(1, "%s", ed);
 }
 waitpid(pid, &status, 0);
 sigsetmask(omask);
 if (!WIFEXITED(status) || WEXITSTATUS(status) != 0)
  return (0);
 return (1);
}
