
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct proc {scalar_t__ p_state; scalar_t__ p_oppid; int * p_sigacts; int * p_args; TYPE_3__* p_ucred; int p_rux; int p_ru; int p_crux; TYPE_2__* p_stats; scalar_t__ p_xsig; scalar_t__ p_xexit; int * p_klist; int p_pid; int * p_procdesc; int p_pwait; int p_ksi; TYPE_1__* p_pptr; int p_slock; } ;
struct TYPE_6__ {int cr_ruidinfo; } ;
struct TYPE_5__ {int p_cru; } ;
struct TYPE_4__ {scalar_t__ p_pid; } ;


 int CTR2 (int ,char*,int ,int ) ;
 int FIRST_THREAD_IN_PROC (struct proc*) ;
 int KASSERT (int,char*) ;
 int KTR_PTRACE ;
 int KW_EXITCODE (scalar_t__,scalar_t__) ;
 int LIST_REMOVE (struct proc*,int ) ;
 int MA_OWNED ;
 int * PIDHASHLOCK (int ) ;
 int PROC_ID_PID ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ PRS_ZOMBIE ;
 int RACCT_NPROC ;
 int SA_XLOCKED ;
 int SIGCHLD ;
 int WNOWAIT ;
 int atomic_add_int (int *,int) ;
 int chgproccnt (int ,int,int ) ;
 int crfree (TYPE_3__*) ;
 int cv_broadcast (int *) ;
 int knlist_detach (int *) ;
 int leavepgrp (struct proc*) ;
 int mac_proc_destroy (struct proc*) ;
 int mtx_spin_wait_unlocked (int *) ;
 int nprocs ;
 int p_hash ;
 int p_sibling ;
 int pargs_drop (int *) ;
 int pksignal (struct proc*,int ,int ) ;
 int proc_clear_orphan (struct proc*) ;
 int proc_id_clear (int ,int ) ;
 struct proc* proc_realparent (struct proc*) ;
 int proc_reparent (struct proc*,struct proc*,int) ;
 int proc_set_cred (struct proc*,int *) ;
 int proc_zone ;
 int procdesc_reap (struct proc*) ;
 int proctree_lock ;
 scalar_t__ racct_enable ;
 int racct_proc_exit (struct proc*) ;
 int racct_sub (struct proc*,int ,int) ;
 int reaper_abandon_children (struct proc*,int) ;
 int reaper_clear (struct proc*) ;
 int ruadd (int *,int *,int *,int *) ;
 int sigacts_free (int *) ;
 int sigqueue_take (int ) ;
 int sx_assert (int *,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int thread_wait (struct proc*) ;
 int uma_zfree (int ,struct proc*) ;
 int vm_waitproc (struct proc*) ;
 int wakeup (struct proc*) ;

void
proc_reap(struct thread *td, struct proc *p, int *status, int options)
{
 struct proc *q, *t;

 sx_assert(&proctree_lock, SA_XLOCKED);
 PROC_LOCK_ASSERT(p, MA_OWNED);
 KASSERT(p->p_state == PRS_ZOMBIE, ("proc_reap: !PRS_ZOMBIE"));

 mtx_spin_wait_unlocked(&p->p_slock);

 q = td->td_proc;

 if (status)
  *status = KW_EXITCODE(p->p_xexit, p->p_xsig);
 if (options & WNOWAIT) {




  PROC_UNLOCK(p);
  sx_xunlock(&proctree_lock);
  return;
 }

 PROC_LOCK(q);
 sigqueue_take(p->p_ksi);
 PROC_UNLOCK(q);





 if (p->p_oppid != p->p_pptr->p_pid) {
  PROC_UNLOCK(p);
  t = proc_realparent(p);
  PROC_LOCK(t);
  PROC_LOCK(p);
  CTR2(KTR_PTRACE,
      "wait: traced child %d moved back to parent %d", p->p_pid,
      t->p_pid);
  proc_reparent(p, t, 0);
  PROC_UNLOCK(p);
  pksignal(t, SIGCHLD, p->p_ksi);
  wakeup(t);
  cv_broadcast(&p->p_pwait);
  PROC_UNLOCK(t);
  sx_xunlock(&proctree_lock);
  return;
 }
 PROC_UNLOCK(p);





 sx_xlock(PIDHASHLOCK(p->p_pid));
 LIST_REMOVE(p, p_hash);
 sx_xunlock(PIDHASHLOCK(p->p_pid));
 LIST_REMOVE(p, p_sibling);
 reaper_abandon_children(p, 1);
 reaper_clear(p);
 PROC_LOCK(p);
 proc_clear_orphan(p);
 PROC_UNLOCK(p);
 leavepgrp(p);
 if (p->p_procdesc != ((void*)0))
  procdesc_reap(p);
 sx_xunlock(&proctree_lock);

 proc_id_clear(PROC_ID_PID, p->p_pid);

 PROC_LOCK(p);
 knlist_detach(p->p_klist);
 p->p_klist = ((void*)0);
 PROC_UNLOCK(p);







 p->p_xexit = p->p_xsig = 0;

 PROC_LOCK(q);
 ruadd(&q->p_stats->p_cru, &q->p_crux, &p->p_ru, &p->p_rux);
 PROC_UNLOCK(q);




 (void)chgproccnt(p->p_ucred->cr_ruidinfo, -1, 0);
 racct_proc_exit(p);




 crfree(p->p_ucred);
 proc_set_cred(p, ((void*)0));
 pargs_drop(p->p_args);
 p->p_args = ((void*)0);
 sigacts_free(p->p_sigacts);
 p->p_sigacts = ((void*)0);




 thread_wait(p);





 vm_waitproc(p);




 KASSERT(FIRST_THREAD_IN_PROC(p),
     ("proc_reap: no residual thread!"));
 uma_zfree(proc_zone, p);
 atomic_add_int(&nprocs, -1);
}
