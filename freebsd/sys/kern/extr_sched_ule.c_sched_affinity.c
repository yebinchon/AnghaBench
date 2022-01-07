
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;
struct td_sched {int ts_cpu; } ;


 int IPI_PREEMPT ;
 int MA_OWNED ;
 int SRQ_BORING ;
 int TDF_NEEDRESCHED ;
 int TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_ON_RUNQ (struct thread*) ;
 scalar_t__ THREAD_CAN_SCHED (struct thread*,int ) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct thread* curthread ;
 int ipi_cpu (int ,int ) ;
 int sched_add (struct thread*,int ) ;
 int sched_rem (struct thread*) ;
 struct td_sched* td_get_sched (struct thread*) ;

void
sched_affinity(struct thread *td)
{
}
