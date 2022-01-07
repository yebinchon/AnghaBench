
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_priority; } ;
struct proc {int dummy; } ;


 int FIRST_THREAD_IN_PROC (struct proc*) ;
 int KTR_SCHED ;
 int KTR_STATE1 (int ,char*,int ,char*,char*,int ) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int sched_exit_thread (int ,struct thread*) ;
 int sched_tdname (struct thread*) ;

void
sched_exit(struct proc *p, struct thread *td)
{

 KTR_STATE1(KTR_SCHED, "thread", sched_tdname(td), "proc exit",
     "prio:%d", td->td_priority);

 PROC_LOCK_ASSERT(p, MA_OWNED);
 sched_exit_thread(FIRST_THREAD_IN_PROC(p), td);
}
