
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct proc {struct ucred* p_ucred; } ;
struct nlm_file_svid {scalar_t__ ns_svid; struct ucred* ns_ucred; } ;
struct flock {scalar_t__ l_pid; } ;


 struct nlm_file_svid* LIST_FIRST (int *) ;
 struct nlm_file_svid* LIST_NEXT (struct nlm_file_svid*,int ) ;
 int NLM_SVID_HASH_SIZE ;
 scalar_t__ PID_MAX ;
 int PROC_UNLOCK (struct proc*) ;
 struct ucred* crhold (struct ucred*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * nlm_file_svids ;
 int nlm_svid_lock ;
 int ns_link ;
 struct proc* pfind (scalar_t__) ;

__attribute__((used)) static void
nlm_set_creds_for_lock(struct thread *td, struct flock *fl)
{
 int i;
 struct nlm_file_svid *ns;
 struct proc *p;
 struct ucred *cred;

 cred = ((void*)0);
 if (fl->l_pid > PID_MAX) {





  mtx_lock(&nlm_svid_lock);
  for (i = 0; i < NLM_SVID_HASH_SIZE; i++) {
   for (ns = LIST_FIRST(&nlm_file_svids[i]); ns;
        ns = LIST_NEXT(ns, ns_link)) {
    if (ns->ns_svid == fl->l_pid) {
     cred = crhold(ns->ns_ucred);
     break;
    }
   }
  }
  mtx_unlock(&nlm_svid_lock);
 } else {




  p = pfind(fl->l_pid);
  if (p) {
   cred = crhold(p->p_ucred);
   PROC_UNLOCK(p);
  }
 }





 if (!cred) {
  cred = crhold(td->td_ucred);
 }

 td->td_ucred = cred;
}
