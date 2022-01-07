
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int cr_label; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct ucred* p_ucred; int p_label; } ;
struct TYPE_2__ {int ml_flags; } ;
struct mac_lomac_proc {int mtx; TYPE_1__ mac_lomac; } ;


 int Giant ;
 int MAC_LOMAC_FLAG_UPDATE ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct mac_lomac_proc* PSLOT (int ) ;
 int SLOT (int ) ;
 int crcopy (struct ucred*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int crhold (struct ucred*) ;
 int curthread ;
 int lomac_copy (TYPE_1__*,int ) ;
 int mac_proc_vm_revoke (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int proc_set_cred (struct proc*,struct ucred*) ;

__attribute__((used)) static void
lomac_thread_userret(struct thread *td)
{
 struct proc *p = td->td_proc;
 struct mac_lomac_proc *subj = PSLOT(p->p_label);
 struct ucred *newcred, *oldcred;
 int dodrop;

 mtx_lock(&subj->mtx);
 if (subj->mac_lomac.ml_flags & MAC_LOMAC_FLAG_UPDATE) {
  dodrop = 0;
  mtx_unlock(&subj->mtx);
  newcred = crget();





  mtx_lock(&Giant);
  PROC_LOCK(p);
  mtx_lock(&subj->mtx);



  if ((subj->mac_lomac.ml_flags & MAC_LOMAC_FLAG_UPDATE) == 0) {
   crfree(newcred);
   goto out;
  }
  oldcred = p->p_ucred;
  crcopy(newcred, oldcred);
  crhold(newcred);
  lomac_copy(&subj->mac_lomac, SLOT(newcred->cr_label));
  proc_set_cred(p, newcred);
  crfree(oldcred);
  dodrop = 1;
 out:
  mtx_unlock(&subj->mtx);
  PROC_UNLOCK(p);
  if (dodrop)
   mac_proc_vm_revoke(curthread);
  mtx_unlock(&Giant);
 } else {
  mtx_unlock(&subj->mtx);
 }
}
