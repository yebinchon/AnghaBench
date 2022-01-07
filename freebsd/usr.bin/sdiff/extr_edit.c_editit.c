
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;
typedef int pid_t ;


 int EINTR ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 char* _PATH_VI ;
 int _exit (int) ;
 int errno ;
 int execlp (char const*,char const*,char const*,char*) ;
 int fork () ;
 char* getenv (char*) ;
 int signal (int ,int ) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int
editit(const char *pathname)
{
 sig_t sighup, sigint, sigquit, sigchld;
 pid_t pid;
 int saved_errno, st, ret = -1;
 const char *ed;

 ed = getenv("VISUAL");
 if (ed == ((void*)0))
  ed = getenv("EDITOR");
 if (ed == ((void*)0))
  ed = _PATH_VI;

 sighup = signal(SIGHUP, SIG_IGN);
 sigint = signal(SIGINT, SIG_IGN);
 sigquit = signal(SIGQUIT, SIG_IGN);
 sigchld = signal(SIGCHLD, SIG_DFL);
 if ((pid = fork()) == -1)
  goto fail;
 if (pid == 0) {
  execlp(ed, ed, pathname, (char *)((void*)0));
  _exit(127);
 }
 while (waitpid(pid, &st, 0) == -1)
  if (errno != EINTR)
   goto fail;
 if (!WIFEXITED(st))
  errno = EINTR;
 else
  ret = WEXITSTATUS(st);

 fail:
 saved_errno = errno;
 (void)signal(SIGHUP, sighup);
 (void)signal(SIGINT, sigint);
 (void)signal(SIGQUIT, sigquit);
 (void)signal(SIGCHLD, sigchld);
 errno = saved_errno;
 return (ret);
}
