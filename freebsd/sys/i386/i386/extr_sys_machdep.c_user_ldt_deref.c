
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union descriptor {int dummy; } descriptor ;
struct proc_ldt {scalar_t__ ldt_refcnt; int ldt_len; int ldt_base; } ;


 int MA_OWNED ;
 int M_SUBPROC ;
 int dt_lock ;
 int free (struct proc_ldt*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock_spin (int *) ;
 int pmap_trm_free (int ,int) ;

void
user_ldt_deref(struct proc_ldt *pldt)
{

 mtx_assert(&dt_lock, MA_OWNED);
 if (--pldt->ldt_refcnt == 0) {
  mtx_unlock_spin(&dt_lock);
  pmap_trm_free(pldt->ldt_base, pldt->ldt_len *
      sizeof(union descriptor));
  free(pldt, M_SUBPROC);
 } else
  mtx_unlock_spin(&dt_lock);
}
