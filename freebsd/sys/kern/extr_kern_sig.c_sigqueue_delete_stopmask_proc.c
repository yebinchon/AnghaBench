
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int sigset_t ;


 int SIGADDSET (int ,int ) ;
 int SIGEMPTYSET (int ) ;
 int SIGSTOP ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int sigqueue_delete_set_proc (struct proc*,int *) ;

__attribute__((used)) static void
sigqueue_delete_stopmask_proc(struct proc *p)
{
 sigset_t set;

 SIGEMPTYSET(set);
 SIGADDSET(set, SIGSTOP);
 SIGADDSET(set, SIGTSTP);
 SIGADDSET(set, SIGTTIN);
 SIGADDSET(set, SIGTTOU);
 sigqueue_delete_set_proc(p, &set);
}
