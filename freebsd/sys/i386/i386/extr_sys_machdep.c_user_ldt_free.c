
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct proc_ldt {int dummy; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
struct TYPE_2__ {struct mdproc p_md; } ;


 int MA_OWNED ;
 int PCPU_SET (int ,int ) ;
 int _default_ldt ;
 int currentldt ;
 struct thread* curthread ;
 int dt_lock ;
 int lldt (int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock_spin (int *) ;
 int user_ldt_deref (struct proc_ldt*) ;

void
user_ldt_free(struct thread *td)
{
 struct mdproc *mdp;
 struct proc_ldt *pldt;

 mtx_assert(&dt_lock, MA_OWNED);
 mdp = &td->td_proc->p_md;
 if ((pldt = mdp->md_ldt) == ((void*)0)) {
  mtx_unlock_spin(&dt_lock);
  return;
 }

 if (td == curthread) {
  lldt(_default_ldt);
  PCPU_SET(currentldt, _default_ldt);
 }

 mdp->md_ldt = ((void*)0);
 user_ldt_deref(pldt);
}
