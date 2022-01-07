
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rux_runtime; } ;
struct thread {scalar_t__ td_lastcpu; scalar_t__ td_oncpu; int td_slptick; int td_sigmask; int td_siglist; int td_cow; TYPE_2__ td_rux; int td_user_pri; int td_pri_class; scalar_t__ td_kstack; int td_pcb; int td_tid; int td_flags; int td_base_pri; int td_priority; int td_wchan; int * td_lockname; int * td_name; int * td_wmesg; struct proc* td_proc; } ;
struct proc {scalar_t__ p_state; int p_numthreads; } ;
struct TYPE_3__ {int pri_user; int pri_class; int pri_native; int pri_level; } ;
struct kinfo_proc {scalar_t__ ki_lastcpu_old; scalar_t__ ki_oncpu_old; scalar_t__ ki_lastcpu; scalar_t__ ki_oncpu; int ki_slptime; int ki_sigmask; int ki_siglist; scalar_t__ ki_rqindex; int ki_cow; int ki_estcpu; int ki_pctcpu; int ki_runtime; int ki_rusage; TYPE_1__ ki_pri; void* ki_kstack; int ki_pcb; int ki_numthreads; int ki_tid; int ki_tdflags; int ki_wchan; int ki_stat; int ki_lockname; int ki_kiflag; int ki_moretdname; int ki_tdname; int ki_wmesg; struct thread* ki_tdaddr; } ;


 int KI_LOCKBLOCK ;
 scalar_t__ MAXCPU_OLD ;
 int MA_OWNED ;
 scalar_t__ NOCPU ;
 void* NOCPU_OLD ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_STATLOCK (struct proc*) ;
 int PROC_STATUNLOCK (struct proc*) ;
 scalar_t__ PRS_NORMAL ;
 scalar_t__ PRS_ZOMBIE ;
 scalar_t__ P_SHOULDSTOP (struct proc*) ;
 int SIDL ;
 int SLOCK ;
 int SRUN ;
 int SSLEEP ;
 int SSTOP ;
 int SWAIT ;
 int SZOMB ;
 scalar_t__ TD_CAN_RUN (struct thread*) ;
 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_IS_SLEEPING (struct thread*) ;
 scalar_t__ TD_ON_LOCK (struct thread*) ;
 scalar_t__ TD_ON_RUNQ (struct thread*) ;
 int bzero (int ,int) ;
 int cputick2usec (int ) ;
 int hz ;
 int rufetchtd (struct thread*,int *) ;
 int sched_estcpu (struct thread*) ;
 int sched_pctcpu (struct thread*) ;
 int strlcpy (int ,int *,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int ticks ;

__attribute__((used)) static void
fill_kinfo_thread(struct thread *td, struct kinfo_proc *kp, int preferthread)
{
 struct proc *p;

 p = td->td_proc;
 kp->ki_tdaddr = td;
 PROC_LOCK_ASSERT(p, MA_OWNED);

 if (preferthread)
  PROC_STATLOCK(p);
 thread_lock(td);
 if (td->td_wmesg != ((void*)0))
  strlcpy(kp->ki_wmesg, td->td_wmesg, sizeof(kp->ki_wmesg));
 else
  bzero(kp->ki_wmesg, sizeof(kp->ki_wmesg));
 if (strlcpy(kp->ki_tdname, td->td_name, sizeof(kp->ki_tdname)) >=
     sizeof(kp->ki_tdname)) {
  strlcpy(kp->ki_moretdname,
      td->td_name + sizeof(kp->ki_tdname) - 1,
      sizeof(kp->ki_moretdname));
 } else {
  bzero(kp->ki_moretdname, sizeof(kp->ki_moretdname));
 }
 if (TD_ON_LOCK(td)) {
  kp->ki_kiflag |= KI_LOCKBLOCK;
  strlcpy(kp->ki_lockname, td->td_lockname,
      sizeof(kp->ki_lockname));
 } else {
  kp->ki_kiflag &= ~KI_LOCKBLOCK;
  bzero(kp->ki_lockname, sizeof(kp->ki_lockname));
 }

 if (p->p_state == PRS_NORMAL) {
  if (TD_ON_RUNQ(td) ||
      TD_CAN_RUN(td) ||
      TD_IS_RUNNING(td)) {
   kp->ki_stat = SRUN;
  } else if (P_SHOULDSTOP(p)) {
   kp->ki_stat = SSTOP;
  } else if (TD_IS_SLEEPING(td)) {
   kp->ki_stat = SSLEEP;
  } else if (TD_ON_LOCK(td)) {
   kp->ki_stat = SLOCK;
  } else {
   kp->ki_stat = SWAIT;
  }
 } else if (p->p_state == PRS_ZOMBIE) {
  kp->ki_stat = SZOMB;
 } else {
  kp->ki_stat = SIDL;
 }


 kp->ki_wchan = td->td_wchan;
 kp->ki_pri.pri_level = td->td_priority;
 kp->ki_pri.pri_native = td->td_base_pri;





 if (td->td_lastcpu == NOCPU)
  kp->ki_lastcpu_old = NOCPU_OLD;
 else if (td->td_lastcpu > MAXCPU_OLD)
  kp->ki_lastcpu_old = MAXCPU_OLD;
 else
  kp->ki_lastcpu_old = td->td_lastcpu;

 if (td->td_oncpu == NOCPU)
  kp->ki_oncpu_old = NOCPU_OLD;
 else if (td->td_oncpu > MAXCPU_OLD)
  kp->ki_oncpu_old = MAXCPU_OLD;
 else
  kp->ki_oncpu_old = td->td_oncpu;

 kp->ki_lastcpu = td->td_lastcpu;
 kp->ki_oncpu = td->td_oncpu;
 kp->ki_tdflags = td->td_flags;
 kp->ki_tid = td->td_tid;
 kp->ki_numthreads = p->p_numthreads;
 kp->ki_pcb = td->td_pcb;
 kp->ki_kstack = (void *)td->td_kstack;
 kp->ki_slptime = (ticks - td->td_slptick) / hz;
 kp->ki_pri.pri_class = td->td_pri_class;
 kp->ki_pri.pri_user = td->td_user_pri;

 if (preferthread) {
  rufetchtd(td, &kp->ki_rusage);
  kp->ki_runtime = cputick2usec(td->td_rux.rux_runtime);
  kp->ki_pctcpu = sched_pctcpu(td);
  kp->ki_estcpu = sched_estcpu(td);
  kp->ki_cow = td->td_cow;
 }


 kp->ki_rqindex = 0;

 if (preferthread)
  kp->ki_siglist = td->td_siglist;
 kp->ki_sigmask = td->td_sigmask;
 thread_unlock(td);
 if (preferthread)
  PROC_STATUNLOCK(p);
}
