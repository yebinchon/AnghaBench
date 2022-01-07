
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;
typedef scalar_t__ fixpt_t ;





 int TDF_SINTR ;
 int TD_IS_RUNNING (struct thread*) ;
 int TD_ON_RUNQ (struct thread*) ;
 int TESTAB (int,int) ;
 scalar_t__ sched_pctcpu (struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static int
thread_compare(struct thread *td, struct thread *td2)
{
 int runa, runb;
 int slpa, slpb;
 fixpt_t esta, estb;

 if (td == ((void*)0))
  return (1);




 thread_lock(td);
 runa = TD_IS_RUNNING(td) | TD_ON_RUNQ(td);
 slpa = td->td_flags & TDF_SINTR;
 esta = sched_pctcpu(td);
 thread_unlock(td);
 thread_lock(td2);
 runb = TD_IS_RUNNING(td2) | TD_ON_RUNQ(td2);
 estb = sched_pctcpu(td2);
 slpb = td2->td_flags & TDF_SINTR;
 thread_unlock(td2);



 switch (TESTAB(runa, runb)) {
 case 129:
  return (0);
 case 128:
  return (1);
 case 130:
  break;
 }



 if (estb > esta)
  return (1);
 if (esta > estb)
  return (0);



 switch (TESTAB(slpa, slpb)) {
 case 129:
  return (0);
 case 128:
  return (1);
 case 130:
  break;
 }

 return (td < td2);
}
