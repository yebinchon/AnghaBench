
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v ;
typedef scalar_t__ uintfptr_t ;
typedef int u_short ;
typedef scalar_t__ u_int ;
struct uprof {scalar_t__ pr_off; scalar_t__ pr_size; scalar_t__ pr_base; } ;
struct thread {struct proc* td_proc; } ;
struct proc {int p_flag; scalar_t__ p_profthreads; TYPE_1__* p_stats; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {struct uprof p_prof; } ;


 scalar_t__ PC_TO_INDEX (scalar_t__,struct uprof*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_PROFLOCK (struct proc*) ;
 int PROC_PROFUNLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_PROFIL ;
 int P_STOPPROF ;
 scalar_t__ copyin (scalar_t__,int *,int) ;
 scalar_t__ copyout (int *,scalar_t__,int) ;
 int stopprofclock (struct proc*) ;
 int wakeup (scalar_t__*) ;

void
addupc_task(struct thread *td, uintfptr_t pc, u_int ticks)
{
 struct proc *p = td->td_proc;
 struct uprof *prof;
 caddr_t addr;
 u_int i;
 u_short v;
 int stop = 0;

 if (ticks == 0)
  return;

 PROC_LOCK(p);
 if (!(p->p_flag & P_PROFIL)) {
  PROC_UNLOCK(p);
  return;
 }
 p->p_profthreads++;
 prof = &p->p_stats->p_prof;
 PROC_PROFLOCK(p);
 if (pc < prof->pr_off ||
     (i = PC_TO_INDEX(pc, prof)) >= prof->pr_size) {
  PROC_PROFUNLOCK(p);
  goto out;
 }

 addr = prof->pr_base + i;
 PROC_PROFUNLOCK(p);
 PROC_UNLOCK(p);
 if (copyin(addr, &v, sizeof(v)) == 0) {
  v += ticks;
  if (copyout(&v, addr, sizeof(v)) == 0) {
   PROC_LOCK(p);
   goto out;
  }
 }
 stop = 1;
 PROC_LOCK(p);

out:
 if (--p->p_profthreads == 0) {
  if (p->p_flag & P_STOPPROF) {
   wakeup(&p->p_profthreads);
   p->p_flag &= ~P_STOPPROF;
   stop = 0;
  }
 }
 if (stop)
  stopprofclock(p);
 PROC_UNLOCK(p);
}
