
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct thread {char* td_name; int td_pflags; struct proc* td_proc; } ;
struct proc {scalar_t__ p_state; int p_pid; int p_flag; TYPE_1__* p_sysent; } ;
struct TYPE_2__ {int (* sv_schedtail ) (struct thread*) ;} ;


 int CTR4 (int ,char*,struct thread*,int ,int,char*) ;
 int Giant ;
 int KASSERT (int,char*) ;
 int KTR_PROC ;
 int MA_NOTOWNED ;
 struct thread* PCPU_GET (int ) ;
 int PCPU_SET (int ,int *) ;
 scalar_t__ PRS_NORMAL ;
 int P_KPROC ;
 int TDP_FORKING ;
 struct thread* curthread ;
 int deadthread ;
 int kthread_exit () ;
 int mtx_assert (int *,int ) ;
 int printf (char*,char*,int) ;
 int sched_fork_exit (struct thread*) ;
 int stub1 (struct thread*) ;
 int td_get_sched (struct thread*) ;
 int thread_stash (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
fork_exit(void (*callout)(void *, struct trapframe *), void *arg,
    struct trapframe *frame)
{
 struct proc *p;
 struct thread *td;
 struct thread *dtd;

 td = curthread;
 p = td->td_proc;
 KASSERT(p->p_state == PRS_NORMAL, ("executing process is still new"));

 CTR4(KTR_PROC, "fork_exit: new thread %p (td_sched %p, pid %d, %s)",
     td, td_get_sched(td), p->p_pid, td->td_name);

 sched_fork_exit(td);





 if ((dtd = PCPU_GET(deadthread))) {
  PCPU_SET(deadthread, ((void*)0));
  thread_stash(dtd);
 }
 thread_unlock(td);






 KASSERT(callout != ((void*)0), ("NULL callout in fork_exit"));
 callout(arg, frame);





 if (p->p_flag & P_KPROC) {
  printf("Kernel thread \"%s\" (pid %d) exited prematurely.\n",
      td->td_name, p->p_pid);
  kthread_exit();
 }
 mtx_assert(&Giant, MA_NOTOWNED);

 if (p->p_sysent->sv_schedtail != ((void*)0))
  (p->p_sysent->sv_schedtail)(td);
 td->td_pflags &= ~TDP_FORKING;
}
