
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct nlm_recovery_context {int nr_state; int nr_host; } ;
struct flock {int dummy; } ;


 int ERESTART ;
 int F_REMOTE ;
 int F_SETLK ;
 int LK_SHARED ;
 int TRUE ;
 int crfree (struct ucred*) ;
 struct thread* curthread ;
 int nlm_advlock_internal (struct vnode*,int *,int ,struct flock*,int ,int ,int ) ;
 int nlm_host_get_state (int ) ;
 int nlm_set_creds_for_lock (struct thread*,struct flock*) ;
 int vn_lock (struct vnode*,int ) ;

__attribute__((used)) static int
nlm_client_recover_lock(struct vnode *vp, struct flock *fl, void *arg)
{
 struct nlm_recovery_context *nr = (struct nlm_recovery_context *) arg;
 struct thread *td = curthread;
 struct ucred *oldcred;
 int state, error;






 state = nlm_host_get_state(nr->nr_host);
 if (nr->nr_state != state)
  return (ERESTART);

 error = vn_lock(vp, LK_SHARED);
 if (error)
  return (error);

 oldcred = td->td_ucred;
 nlm_set_creds_for_lock(td, fl);

 error = nlm_advlock_internal(vp, ((void*)0), F_SETLK, fl, F_REMOTE,
     TRUE, TRUE);

 crfree(td->td_ucred);
 td->td_ucred = oldcred;

 return (error);
}
