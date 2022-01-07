
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {TYPE_2__* td_ucred; TYPE_1__* td_proc; } ;
struct reap_kill_tracker_head {int dummy; } ;
struct reap_kill_tracker {struct proc* parent; } ;
struct procctl_reaper_kill {scalar_t__ rk_sig; int rk_flags; int rk_fpid; scalar_t__ rk_subtree; scalar_t__ rk_killed; } ;
struct proc {int p_treeflag; scalar_t__ p_reapsubtree; int p_reaplist; int p_children; struct proc* p_reaper; } ;
struct TYPE_8__ {scalar_t__ ksi_signo; int ksi_uid; int ksi_pid; int ksi_code; } ;
typedef TYPE_3__ ksiginfo_t ;
struct TYPE_7__ {int cr_ruid; } ;
struct TYPE_6__ {int p_pid; } ;


 int ECAPMODE ;
 int EINVAL ;
 int ESRCH ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 struct proc* LIST_FIRST (int *) ;
 struct proc* LIST_NEXT (struct proc*,int ) ;
 int MPASS (int) ;
 int M_TEMP ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_TREE_REAPER ;
 int REAPER_KILL_CHILDREN ;
 int REAPER_KILL_SUBTREE ;
 int SI_USER ;
 int SX_LOCKED ;
 struct reap_kill_tracker* TAILQ_FIRST (struct reap_kill_tracker_head*) ;
 int TAILQ_INIT (struct reap_kill_tracker_head*) ;
 int TAILQ_REMOVE (struct reap_kill_tracker_head*,struct reap_kill_tracker*,int ) ;
 scalar_t__ _SIG_MAXSIG ;
 int free (struct reap_kill_tracker*,int ) ;
 int ksiginfo_init (TYPE_3__*) ;
 int link ;
 int p_reapsibling ;
 int p_sibling ;
 int proctree_lock ;
 int reap_kill_proc (struct thread*,struct proc*,TYPE_3__*,struct procctl_reaper_kill*,int*) ;
 int reap_kill_sched (struct reap_kill_tracker_head*,struct proc*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
reap_kill(struct thread *td, struct proc *p, struct procctl_reaper_kill *rk)
{
 struct proc *reap, *p2;
 ksiginfo_t ksi;
 struct reap_kill_tracker_head tracker;
 struct reap_kill_tracker *t;
 int error;

 sx_assert(&proctree_lock, SX_LOCKED);
 if (IN_CAPABILITY_MODE(td))
  return (ECAPMODE);
 if (rk->rk_sig <= 0 || rk->rk_sig > _SIG_MAXSIG ||
     (rk->rk_flags & ~(REAPER_KILL_CHILDREN |
     REAPER_KILL_SUBTREE)) != 0 || (rk->rk_flags &
     (REAPER_KILL_CHILDREN | REAPER_KILL_SUBTREE)) ==
     (REAPER_KILL_CHILDREN | REAPER_KILL_SUBTREE))
  return (EINVAL);
 PROC_UNLOCK(p);
 reap = (p->p_treeflag & P_TREE_REAPER) == 0 ? p->p_reaper : p;
 ksiginfo_init(&ksi);
 ksi.ksi_signo = rk->rk_sig;
 ksi.ksi_code = SI_USER;
 ksi.ksi_pid = td->td_proc->p_pid;
 ksi.ksi_uid = td->td_ucred->cr_ruid;
 error = ESRCH;
 rk->rk_killed = 0;
 rk->rk_fpid = -1;
 if ((rk->rk_flags & REAPER_KILL_CHILDREN) != 0) {
  for (p2 = LIST_FIRST(&reap->p_children); p2 != ((void*)0);
      p2 = LIST_NEXT(p2, p_sibling)) {
   reap_kill_proc(td, p2, &ksi, rk, &error);




  }
 } else {
  TAILQ_INIT(&tracker);
  reap_kill_sched(&tracker, reap);
  while ((t = TAILQ_FIRST(&tracker)) != ((void*)0)) {
   MPASS((t->parent->p_treeflag & P_TREE_REAPER) != 0);
   TAILQ_REMOVE(&tracker, t, link);
   for (p2 = LIST_FIRST(&t->parent->p_reaplist); p2 != ((void*)0);
       p2 = LIST_NEXT(p2, p_reapsibling)) {
    if (t->parent == reap &&
        (rk->rk_flags & REAPER_KILL_SUBTREE) != 0 &&
        p2->p_reapsubtree != rk->rk_subtree)
     continue;
    if ((p2->p_treeflag & P_TREE_REAPER) != 0)
     reap_kill_sched(&tracker, p2);
    reap_kill_proc(td, p2, &ksi, rk, &error);
   }
   free(t, M_TEMP);
  }
 }
 PROC_LOCK(p);
 return (error);
}
