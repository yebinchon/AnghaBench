
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_name; } ;
struct tdq {int dummy; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {int ts_cpu; } ;


 int CPU_ABSENT (int ) ;
 int KASSERT (int,char*) ;
 struct tdq* TDQ_CPU (int ) ;
 struct mtx* TDQ_LOCKPTR (struct tdq*) ;
 int TDQ_UNLOCK (struct tdq*) ;
 int spinlock_enter () ;
 int spinlock_exit () ;
 TYPE_1__* td_get_sched (struct thread*) ;
 int tdq_add (struct tdq*,struct thread*,int) ;
 int tdq_load_rem (struct tdq*,struct thread*) ;
 int tdq_lock_pair (struct tdq*,struct tdq*) ;
 int tdq_notify (struct tdq*,struct thread*) ;
 int thread_lock_block (struct thread*) ;

__attribute__((used)) static struct mtx *
sched_switch_migrate(struct tdq *tdq, struct thread *td, int flags)
{
 struct tdq *tdn;

 KASSERT(!CPU_ABSENT(td_get_sched(td)->ts_cpu), ("sched_switch_migrate: "
     "thread %s queued on absent CPU %d.", td->td_name,
     td_get_sched(td)->ts_cpu));
 tdn = TDQ_CPU(td_get_sched(td)->ts_cpu);
 return (TDQ_LOCKPTR(tdn));
}
