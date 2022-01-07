
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union descriptor {int dummy; } descriptor ;
struct thread {TYPE_1__* td_proc; } ;
struct proc_ldt {int ldt_len; scalar_t__ ldt_base; int ldt_sd; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {struct mdproc p_md; int p_vmspace; } ;


 int ENOMEM ;
 int MAX_LD ;
 int MA_OWNED ;
 int M_SUBPROC ;
 int NLDT ;
 scalar_t__ NULL_LDT_BASE ;
 int dt_lock ;
 int free (struct proc_ldt*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pmap_trm_free (scalar_t__,int) ;
 int set_user_ldt_locked (struct mdproc*) ;
 int set_user_ldt_rv ;
 int smp_rendezvous (int *,int ,int *,int ) ;
 struct proc_ldt* user_ldt_alloc (struct mdproc*,int) ;

__attribute__((used)) static int
i386_ldt_grow(struct thread *td, int len)
{
 struct mdproc *mdp;
 struct proc_ldt *new_ldt, *pldt;
 caddr_t old_ldt_base;
 int old_ldt_len;

 mtx_assert(&dt_lock, MA_OWNED);

 if (len > MAX_LD)
  return (ENOMEM);
 if (len < NLDT + 1)
  len = NLDT + 1;

 mdp = &td->td_proc->p_md;
 old_ldt_base = NULL_LDT_BASE;
 old_ldt_len = 0;


 if ((pldt = mdp->md_ldt) == ((void*)0) || len > pldt->ldt_len) {
  new_ldt = user_ldt_alloc(mdp, len);
  if (new_ldt == ((void*)0))
   return (ENOMEM);
  pldt = mdp->md_ldt;

  if (pldt != ((void*)0)) {
   if (new_ldt->ldt_len <= pldt->ldt_len) {




    mtx_unlock_spin(&dt_lock);
    pmap_trm_free(new_ldt->ldt_base,
       new_ldt->ldt_len * sizeof(union descriptor));
    free(new_ldt, M_SUBPROC);
    mtx_lock_spin(&dt_lock);
    return (0);
   }





   old_ldt_base = pldt->ldt_base;
   old_ldt_len = pldt->ldt_len;
   pldt->ldt_sd = new_ldt->ldt_sd;
   pldt->ldt_base = new_ldt->ldt_base;
   pldt->ldt_len = new_ldt->ldt_len;
  } else
   mdp->md_ldt = pldt = new_ldt;
  set_user_ldt_locked(&td->td_proc->p_md);
  mtx_unlock_spin(&dt_lock);

  if (old_ldt_base != NULL_LDT_BASE) {
   pmap_trm_free(old_ldt_base, old_ldt_len *
       sizeof(union descriptor));
   free(new_ldt, M_SUBPROC);
  }
  mtx_lock_spin(&dt_lock);
 }
 return (0);
}
