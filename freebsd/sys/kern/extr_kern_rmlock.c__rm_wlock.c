
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct turnstile {int dummy; } ;
struct TYPE_2__ {int lo_flags; } ;
struct rmlock {TYPE_1__ lock_object; int rm_activeReaders; void* rm_writecpus; int rm_lock_mtx; int rm_lock_sx; } ;
struct rm_priotracker {int rmp_flags; int rmp_thread; } ;
typedef void* cpuset_t ;


 scalar_t__ CPU_CMP (void**,void**) ;
 int CPU_NAND (void**,void**) ;
 struct rm_priotracker* LIST_FIRST (int *) ;
 int LO_SLEEPABLE ;
 int RMPF_ONQUEUE ;
 int RMPF_SIGNAL ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int TS_EXCLUSIVE_QUEUE ;
 void* all_cpus ;
 int mtx_lock (int *) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rm_cleanIPI (struct rmlock*) ;
 int rm_spinlock ;
 int smp_no_rendezvous_barrier ;
 int smp_rendezvous_cpus (void*,int ,int (*) (struct rmlock*),int ,struct rmlock*) ;
 int sx_xlock (int *) ;
 struct turnstile* turnstile_trywait (TYPE_1__*) ;
 int turnstile_wait (struct turnstile*,int ,int ) ;

void
_rm_wlock(struct rmlock *rm)
{
 struct rm_priotracker *prio;
 struct turnstile *ts;
 cpuset_t readcpus;

 if (SCHEDULER_STOPPED())
  return;

 if (rm->lock_object.lo_flags & LO_SLEEPABLE)
  sx_xlock(&rm->rm_lock_sx);
 else
  mtx_lock(&rm->rm_lock_mtx);

 if (CPU_CMP(&rm->rm_writecpus, &all_cpus)) {

  readcpus = all_cpus;
  CPU_NAND(&readcpus, &rm->rm_writecpus);
  rm->rm_writecpus = all_cpus;
  rm_cleanIPI(rm);


  mtx_lock_spin(&rm_spinlock);
  while ((prio = LIST_FIRST(&rm->rm_activeReaders)) != ((void*)0)) {
   ts = turnstile_trywait(&rm->lock_object);
   prio->rmp_flags = RMPF_ONQUEUE | RMPF_SIGNAL;
   mtx_unlock_spin(&rm_spinlock);
   turnstile_wait(ts, prio->rmp_thread,
       TS_EXCLUSIVE_QUEUE);
   mtx_lock_spin(&rm_spinlock);
  }
  mtx_unlock_spin(&rm_spinlock);
 }
}
