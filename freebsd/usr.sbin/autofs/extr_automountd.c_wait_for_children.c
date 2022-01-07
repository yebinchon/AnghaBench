
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int log_debugx (char*,scalar_t__,...) ;
 int log_warnx (char*,scalar_t__,int ) ;
 scalar_t__ wait4 (int,int*,int ,int *) ;

__attribute__((used)) static int
wait_for_children(bool block)
{
 pid_t pid;
 int status;
 int num = 0;

 for (;;) {



  if (block && num == 0)
   pid = wait4(-1, &status, 0, ((void*)0));
  else
   pid = wait4(-1, &status, WNOHANG, ((void*)0));
  if (pid <= 0)
   break;
  if (WIFSIGNALED(status)) {
   log_warnx("child process %d terminated with signal %d",
       pid, WTERMSIG(status));
  } else if (WEXITSTATUS(status) != 0) {
   log_debugx("child process %d terminated with exit status %d",
       pid, WEXITSTATUS(status));
  } else {
   log_debugx("child process %d terminated gracefully", pid);
  }
  num++;
 }

 return (num);
}
