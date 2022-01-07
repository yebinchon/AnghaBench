
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_priority; } ;
struct proc {int dummy; } ;


 struct thread* FIRST_THREAD_IN_PROC (struct proc*) ;
 int KTR_SCHED ;
 int KTR_STATE1 (int ,char*,int ,char*,char*,int ) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int sched_exit_thread (struct thread*,struct thread*) ;
 int sched_tdname (struct thread*) ;

void
sched_exit(struct proc *p, struct thread *child)
{
 struct thread *td;

 KTR_STATE1(KTR_SCHED, "thread", sched_tdname(child), "proc exit",
     "prio:%d", child->td_priority);
 PROC_LOCK_ASSERT(p, MA_OWNED);
 td = FIRST_THREAD_IN_PROC(p);
 sched_exit_thread(td, child);
}
