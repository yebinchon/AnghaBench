
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trussinfo {int dummy; } ;
typedef int pid_t ;


 int PT_TRACE_ME ;
 int err (int,char*,...) ;
 int execvp (char*,char**) ;
 int new_proc (struct trussinfo*,int,int ) ;
 int ptrace (int ,int ,int ,int ) ;
 int vfork () ;
 scalar_t__ waitpid (int,int *,int ) ;

void
setup_and_wait(struct trussinfo *info, char *command[])
{
 pid_t pid;

 pid = vfork();
 if (pid == -1)
  err(1, "fork failed");
 if (pid == 0) {
  ptrace(PT_TRACE_ME, 0, 0, 0);
  execvp(command[0], command);
  err(1, "execvp %s", command[0]);
 }


 if (waitpid(pid, ((void*)0), 0) < 0)
  err(1, "unexpect stop in waitpid");

 new_proc(info, pid, 0);
}
