
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_flags; int td_priority; } ;
struct TYPE_2__ {scalar_t__ ts_estcpu; } ;


 scalar_t__ ESTCPULIM (scalar_t__) ;
 int KTR_SCHED ;
 int KTR_STATE1 (int ,char*,int ,char*,char*,int ) ;
 int TDF_NOLOAD ;
 int sched_load_rem () ;
 int sched_tdname (struct thread*) ;
 TYPE_1__* td_get_sched (struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
sched_exit_thread(struct thread *td, struct thread *child)
{

 KTR_STATE1(KTR_SCHED, "thread", sched_tdname(child), "exit",
     "prio:%d", child->td_priority);
 thread_lock(td);
 td_get_sched(td)->ts_estcpu = ESTCPULIM(td_get_sched(td)->ts_estcpu +
     td_get_sched(child)->ts_estcpu);
 thread_unlock(td);
 thread_lock(child);
 if ((child->td_flags & TDF_NOLOAD) == 0)
  sched_load_rem();
 thread_unlock(child);
}
