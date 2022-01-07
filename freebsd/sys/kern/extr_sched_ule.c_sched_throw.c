
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int td_oncpu; int td_lastcpu; TYPE_3__* td_lock; } ;
struct tdq {int dummy; } ;
struct TYPE_6__ {uintptr_t mtx_lock; int lock_object; } ;
struct TYPE_4__ {int md_spinlock_count; } ;
struct TYPE_5__ {TYPE_1__ td_md; } ;


 int DPCPU_PTR (struct tdq*) ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int NOCPU ;
 int PCPU_SET (int ,int ) ;
 int TDQ_LOCK (struct tdq*) ;
 TYPE_3__* TDQ_LOCKPTR (struct tdq*) ;
 struct tdq* TDQ_SELF () ;
 struct thread* choosethread () ;
 int cpu_throw (struct thread*,struct thread*) ;
 int cpu_ticks () ;
 TYPE_2__* curthread ;
 int lock_profile_release_lock (int *) ;
 int sched ;
 int spinlock_exit () ;
 int switchticks ;
 int switchtime ;
 int tdq_load_rem (struct tdq*,struct thread*) ;
 int ticks ;

void
sched_throw(struct thread *td)
{
 struct thread *newtd;
 struct tdq *tdq;

 if (td == ((void*)0)) {




  tdq = TDQ_SELF();
  TDQ_LOCK(tdq);
  spinlock_exit();
  PCPU_SET(switchtime, cpu_ticks());
  PCPU_SET(switchticks, ticks);
 } else {
  tdq = TDQ_SELF();
  MPASS(td->td_lock == TDQ_LOCKPTR(tdq));
  tdq_load_rem(tdq, td);
  lock_profile_release_lock(&TDQ_LOCKPTR(tdq)->lock_object);
  td->td_lastcpu = td->td_oncpu;
  td->td_oncpu = NOCPU;
 }
 KASSERT(curthread->td_md.md_spinlock_count == 1, ("invalid count"));
 newtd = choosethread();
 TDQ_LOCKPTR(tdq)->mtx_lock = (uintptr_t)newtd;
 cpu_throw(td, newtd);
}
