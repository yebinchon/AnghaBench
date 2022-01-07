
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;
typedef int pid_t ;


 int SIGCHLD ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_IGN ;
 int _exit (int) ;
 int err (int,char*) ;
 int execl (char const*,char const*,char*,char const*,char*) ;
 int sigblock (int ) ;
 int sigmask (int ) ;
 int signal (int ,int ) ;
 int sigsetmask (int) ;
 int vfork () ;
 int waitpid (int,int*,int ) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
exec_shell(const char *command, const char *use_shell, const char *use_name)
{
 pid_t pid;
 int omask, pstat;
 sig_t intsave, quitsave;

 if (!command)
  return(1);

 omask = sigblock(sigmask(SIGCHLD));
 switch(pid = vfork()) {
 case -1:
  err(1, "vfork");
 case 0:
  (void)sigsetmask(omask);
  execl(use_shell, use_name, "-c", command, (char *)((void*)0));
  warn("%s", use_shell);
  _exit(1);
 }
 intsave = signal(SIGINT, SIG_IGN);
 quitsave = signal(SIGQUIT, SIG_IGN);
 pid = waitpid(pid, &pstat, 0);
 (void)sigsetmask(omask);
 (void)signal(SIGINT, intsave);
 (void)signal(SIGQUIT, quitsave);
 return(pid == -1 ? -1 : pstat);
}
