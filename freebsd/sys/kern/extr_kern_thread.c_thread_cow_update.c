
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int td_cowgen; struct plimit* td_limit; struct ucred* td_ucred; struct proc* td_proc; } ;
struct proc {int p_cowgen; struct plimit* p_limit; struct ucred* p_ucred; } ;
struct plimit {int dummy; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int crfree (struct ucred*) ;
 struct ucred* crhold (struct ucred*) ;
 int lim_free (struct plimit*) ;
 struct plimit* lim_hold (struct plimit*) ;

void
thread_cow_update(struct thread *td)
{
 struct proc *p;
 struct ucred *oldcred;
 struct plimit *oldlimit;

 p = td->td_proc;
 oldcred = ((void*)0);
 oldlimit = ((void*)0);
 PROC_LOCK(p);
 if (td->td_ucred != p->p_ucred) {
  oldcred = td->td_ucred;
  td->td_ucred = crhold(p->p_ucred);
 }
 if (td->td_limit != p->p_limit) {
  oldlimit = td->td_limit;
  td->td_limit = lim_hold(p->p_limit);
 }
 td->td_cowgen = p->p_cowgen;
 PROC_UNLOCK(p);
 if (oldcred != ((void*)0))
  crfree(oldcred);
 if (oldlimit != ((void*)0))
  lim_free(oldlimit);
}
