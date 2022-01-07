
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct flock {int l_type; } ;


 int FALSE ;
 int F_REMOTE ;
 int F_UNLCK ;
 int crfree (struct ucred*) ;
 struct thread* curthread ;
 int nlm_advlock_internal (struct vnode*,int *,int ,struct flock*,int ,int ,int ) ;
 int nlm_set_creds_for_lock (struct thread*,struct flock*) ;

__attribute__((used)) static int
nlm_reclaim_free_lock(struct vnode *vp, struct flock *fl, void *arg)
{
 struct flock newfl;
 struct thread *td = curthread;
 struct ucred *oldcred;
 int error;

 newfl = *fl;
 newfl.l_type = F_UNLCK;

 oldcred = td->td_ucred;
 nlm_set_creds_for_lock(td, &newfl);

 error = nlm_advlock_internal(vp, ((void*)0), F_UNLCK, &newfl, F_REMOTE,
     FALSE, FALSE);

 crfree(td->td_ucred);
 td->td_ucred = oldcred;

 return (error);
}
