
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trussinfo {struct threadinfo* curthread; } ;
struct threadinfo {int after; int in_syscall; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,int *) ;
 int free_syscall (struct threadinfo*) ;
 int print_syscall_ret (struct trussinfo*,int ,int *) ;

__attribute__((used)) static void
thread_exit_syscall(struct trussinfo *info)
{
 struct threadinfo *t;

 t = info->curthread;
 if (!t->in_syscall)
  return;

 clock_gettime(CLOCK_REALTIME, &t->after);

 print_syscall_ret(info, 0, ((void*)0));
 free_syscall(t);
}
