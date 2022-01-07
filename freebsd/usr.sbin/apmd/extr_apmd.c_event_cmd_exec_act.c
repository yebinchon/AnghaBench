
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_cmd_exec {int line; } ;
typedef int pid_t ;


 int EINTR ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGTERM ;
 int SIG_DFL ;
 int _PATH_BSHELL ;
 int _exit (int) ;
 int errno ;
 int execl (int ,char*,char*,int ,char*) ;
 int fork () ;
 int signal (int ,int ) ;
 int waitpid (int,int*,int ) ;
 int warn (char*) ;

int
event_cmd_exec_act(void *this)
{
 struct event_cmd_exec * p = this;
 int status = -1;
 pid_t pid;

 switch ((pid = fork())) {
 case -1:
  warn("cannot fork");
  break;
 case 0:

  signal(SIGHUP, SIG_DFL);
  signal(SIGCHLD, SIG_DFL);
  signal(SIGTERM, SIG_DFL);
  execl(_PATH_BSHELL, "sh", "-c", p->line, (char *)((void*)0));
  _exit(127);
 default:

  do {
   pid = waitpid(pid, &status, 0);
  } while (pid == -1 && errno == EINTR);
  break;
 }
 return status;
}
