
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct rusage {int ru_stime; int ru_utime; } ;
struct proc {TYPE_1__* p_stats; } ;
struct TYPE_2__ {struct rusage p_cru; } ;


 int EINVAL ;
 int PROC_LOCK (struct proc*) ;
 int PROC_STATLOCK (struct proc*) ;
 int PROC_STATUNLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;



 int calccru (struct proc*,int *,int *) ;
 int rufetchcalc (struct proc*,struct rusage*,int *,int *) ;
 int rufetchtd (struct thread*,struct rusage*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
kern_getrusage(struct thread *td, int who, struct rusage *rup)
{
 struct proc *p;
 int error;

 error = 0;
 p = td->td_proc;
 PROC_LOCK(p);
 switch (who) {
 case 129:
  rufetchcalc(p, rup, &rup->ru_utime,
      &rup->ru_stime);
  break;

 case 130:
  *rup = p->p_stats->p_cru;
  calccru(p, &rup->ru_utime, &rup->ru_stime);
  break;

 case 128:
  PROC_STATLOCK(p);
  thread_lock(td);
  rufetchtd(td, rup);
  thread_unlock(td);
  PROC_STATUNLOCK(p);
  break;

 default:
  error = EINVAL;
 }
 PROC_UNLOCK(p);
 return (error);
}
