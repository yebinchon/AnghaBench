
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {struct prison* cr_prison; } ;
struct thread {TYPE_1__* td_ucred; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct prison {int pr_root; int pr_cpuset; int pr_mtx; int pr_uref; int pr_ref; } ;
struct TYPE_2__ {struct prison* cr_prison; } ;


 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int PD_DEREF ;
 int PD_DEUREF ;
 int PD_LIST_SLOCKED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PR_METHOD_ATTACH ;
 int VOP_UNLOCK (int ,int ) ;
 int allprison_lock ;
 int change_dir (int ,struct thread*) ;
 int cpuset_setproc_update_set (struct proc*,int ) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int crhold (struct ucred*) ;
 int mac_vnode_check_chroot (TYPE_1__*,int ) ;
 int mtx_unlock (int *) ;
 int osd_jail_call (struct prison*,int ,struct thread*) ;
 int prison_deref (struct prison*,int) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int pwd_chroot (struct thread*,int ) ;
 int racct_proc_ucred_changed (struct proc*,struct ucred*,struct ucred*) ;
 int rctl_proc_ucred_changed (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;
 int sx_sunlock (int *) ;
 int vn_lock (int ,int) ;

__attribute__((used)) static int
do_jail_attach(struct thread *td, struct prison *pr)
{
 struct proc *p;
 struct ucred *newcred, *oldcred;
 int error;
 pr->pr_ref++;
 pr->pr_uref++;
 mtx_unlock(&pr->pr_mtx);


 error = osd_jail_call(pr, PR_METHOD_ATTACH, td);
 if (error) {
  prison_deref(pr, PD_DEREF | PD_DEUREF | PD_LIST_SLOCKED);
  return (error);
 }
 sx_sunlock(&allprison_lock);




 p = td->td_proc;
 error = cpuset_setproc_update_set(p, pr->pr_cpuset);
 if (error)
  goto e_revert_osd;

 vn_lock(pr->pr_root, LK_EXCLUSIVE | LK_RETRY);
 if ((error = change_dir(pr->pr_root, td)) != 0)
  goto e_unlock;




 VOP_UNLOCK(pr->pr_root, 0);
 if ((error = pwd_chroot(td, pr->pr_root)))
  goto e_revert_osd;

 newcred = crget();
 PROC_LOCK(p);
 oldcred = crcopysafe(p, newcred);
 newcred->cr_prison = pr;
 proc_set_cred(p, newcred);
 setsugid(p);




 PROC_UNLOCK(p);




 prison_deref(oldcred->cr_prison, PD_DEREF | PD_DEUREF);
 crfree(oldcred);
 return (0);

 e_unlock:
 VOP_UNLOCK(pr->pr_root, 0);
 e_revert_osd:

 (void)osd_jail_call(td->td_ucred->cr_prison, PR_METHOD_ATTACH, td);
 prison_deref(pr, PD_DEREF | PD_DEUREF);
 return (error);
}
