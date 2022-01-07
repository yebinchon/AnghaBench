
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sq_signals; } ;
struct thread {TYPE_2__ td_sigqueue; struct proc* td_proc; } ;
struct sigpending_args {int set; } ;
struct TYPE_3__ {int sq_signals; } ;
struct proc {TYPE_1__ p_sigqueue; } ;
typedef int sigset_t ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGSETOR (int ,int ) ;
 int copyout (int *,int ,int) ;

int
sys_sigpending(struct thread *td, struct sigpending_args *uap)
{
 struct proc *p = td->td_proc;
 sigset_t pending;

 PROC_LOCK(p);
 pending = p->p_sigqueue.sq_signals;
 SIGSETOR(pending, td->td_sigqueue.sq_signals);
 PROC_UNLOCK(p);
 return (copyout(&pending, uap->set, sizeof(sigset_t)));
}
