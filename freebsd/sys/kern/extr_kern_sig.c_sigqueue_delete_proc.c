
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int sigset_t ;


 int SIGADDSET (int ,int) ;
 int SIGEMPTYSET (int ) ;
 int sigqueue_delete_set_proc (struct proc*,int *) ;

void
sigqueue_delete_proc(struct proc *p, int signo)
{
 sigset_t set;

 SIGEMPTYSET(set);
 SIGADDSET(set, signo);
 sigqueue_delete_set_proc(p, &set);
}
