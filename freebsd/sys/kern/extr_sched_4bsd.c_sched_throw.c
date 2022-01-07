
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int td_oncpu; int td_lastcpu; TYPE_2__* td_lock; } ;
struct TYPE_6__ {int md_spinlock_count; } ;
struct TYPE_8__ {TYPE_1__ td_md; } ;
struct TYPE_7__ {int lock_object; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MPASS (int) ;
 int NOCPU ;
 int PCPU_SET (int ,int ) ;
 int choosethread () ;
 int cpu_throw (struct thread*,int ) ;
 int cpu_ticks () ;
 TYPE_5__* curthread ;
 int lock_profile_release_lock (int *) ;
 int mtx_assert (TYPE_2__*,int ) ;
 int mtx_lock_spin (TYPE_2__*) ;
 TYPE_2__ sched_lock ;
 int spinlock_exit () ;
 int switchticks ;
 int switchtime ;
 int ticks ;

void
sched_throw(struct thread *td)
{
 if (td == ((void*)0)) {
  mtx_lock_spin(&sched_lock);
  spinlock_exit();
  PCPU_SET(switchtime, cpu_ticks());
  PCPU_SET(switchticks, ticks);
 } else {
  lock_profile_release_lock(&sched_lock.lock_object);
  MPASS(td->td_lock == &sched_lock);
  td->td_lastcpu = td->td_oncpu;
  td->td_oncpu = NOCPU;
 }
 mtx_assert(&sched_lock, MA_OWNED);
 KASSERT(curthread->td_md.md_spinlock_count == 1, ("invalid count"));
 cpu_throw(td, choosethread());
}
