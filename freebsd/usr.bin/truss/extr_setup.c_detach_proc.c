
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int caddr_t ;


 int PT_DETACH ;
 int SIGCONT ;
 int SIGSTOP ;
 int err (int,char*) ;
 int kill (int ,int ) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;
 scalar_t__ waitpid (int ,int *,int ) ;

__attribute__((used)) static void
detach_proc(pid_t pid)
{


 kill(pid, SIGSTOP);
 if (waitpid(pid, ((void*)0), 0) < 0)
  err(1, "Unexpected stop in waitpid");

 if (ptrace(PT_DETACH, pid, (caddr_t)1, 0) < 0)
  err(1, "Can not detach the process");

 kill(pid, SIGCONT);
}
