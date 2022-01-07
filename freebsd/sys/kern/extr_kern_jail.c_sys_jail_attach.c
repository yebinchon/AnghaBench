
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; } ;
struct prison {scalar_t__ pr_uref; int pr_mtx; } ;
struct jail_attach_args {int jid; } ;
struct TYPE_2__ {int cr_prison; } ;


 int EINVAL ;
 int PRIV_JAIL_ATTACH ;
 int allprison_lock ;
 int do_jail_attach (struct thread*,struct prison*) ;
 int mtx_unlock (int *) ;
 struct prison* prison_find_child (int ,int ) ;
 int priv_check (struct thread*,int ) ;
 int sx_downgrade (int *) ;
 int sx_sunlock (int *) ;
 int sx_xlock (int *) ;

int
sys_jail_attach(struct thread *td, struct jail_attach_args *uap)
{
 struct prison *pr;
 int error;

 error = priv_check(td, PRIV_JAIL_ATTACH);
 if (error)
  return (error);







 sx_xlock(&allprison_lock);
 sx_downgrade(&allprison_lock);
 pr = prison_find_child(td->td_ucred->cr_prison, uap->jid);
 if (pr == ((void*)0)) {
  sx_sunlock(&allprison_lock);
  return (EINVAL);
 }





 if (pr->pr_uref == 0) {
  mtx_unlock(&pr->pr_mtx);
  sx_sunlock(&allprison_lock);
  return (EINVAL);
 }

 return (do_jail_attach(td, pr));
}
