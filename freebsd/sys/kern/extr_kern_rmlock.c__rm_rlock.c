
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {size_t td_oncpu; int td_owepreempt; int td_critnest; } ;
struct TYPE_2__ {int lo_flags; } ;
struct rmlock {int rm_writecpus; TYPE_1__ lock_object; } ;
struct rm_priotracker {struct rmlock* rmp_rmlock; struct thread* rmp_thread; scalar_t__ rmp_flags; } ;
struct pcpu {int pc_cpuid; } ;


 int CPU_ISSET (int ,int *) ;
 int LO_SLEEPABLE ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int THREAD_NO_SLEEPING () ;
 int __compiler_membar () ;
 scalar_t__ __predict_true (int) ;
 int _rm_rlock_hard (struct rmlock*,struct rm_priotracker*,int) ;
 struct pcpu** cpuid_to_pcpu ;
 struct thread* curthread ;
 int rm_tracker_add (struct pcpu*,struct rm_priotracker*) ;
 int sched_pin () ;

int
_rm_rlock(struct rmlock *rm, struct rm_priotracker *tracker, int trylock)
{
 struct thread *td = curthread;
 struct pcpu *pc;

 if (SCHEDULER_STOPPED())
  return (1);

 tracker->rmp_flags = 0;
 tracker->rmp_thread = td;
 tracker->rmp_rmlock = rm;

 if (rm->lock_object.lo_flags & LO_SLEEPABLE)
  THREAD_NO_SLEEPING();

 td->td_critnest++;

 __compiler_membar();

 pc = cpuid_to_pcpu[td->td_oncpu];

 rm_tracker_add(pc, tracker);

 sched_pin();

 __compiler_membar();

 td->td_critnest--;





 if (__predict_true(0 == (td->td_owepreempt |
     CPU_ISSET(pc->pc_cpuid, &rm->rm_writecpus))))
  return (1);


 return _rm_rlock_hard(rm, tracker, trylock);
}
