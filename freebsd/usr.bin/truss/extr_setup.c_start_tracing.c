
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trussinfo {int dummy; } ;
typedef int pid_t ;


 int PT_ATTACH ;
 int err (int,char*) ;
 int new_proc (struct trussinfo*,int ,int ) ;
 int ptrace (int ,int ,int *,int ) ;
 int usleep (int) ;
 scalar_t__ waitpid (int ,int *,int ) ;

void
start_tracing(struct trussinfo *info, pid_t pid)
{
 int ret, retry;

 retry = 10;
 do {
  ret = ptrace(PT_ATTACH, pid, ((void*)0), 0);
  usleep(200);
 } while (ret && retry-- > 0);
 if (ret)
  err(1, "can not attach to target process");

 if (waitpid(pid, ((void*)0), 0) < 0)
  err(1, "Unexpect stop in waitpid");

 new_proc(info, pid, 0);
}
