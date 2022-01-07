
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pm_ev_code; } ;
struct pmc_soft {TYPE_1__ ps_ev; } ;


 int KASSERT (int,char*) ;
 scalar_t__ PMC_EV_SOFT_FIRST ;
 int PMC_EV_SOFT_LAST ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ pmc_softevents ;
 int ** pmc_softs ;
 int pmc_softs_mtx ;

void
pmc_soft_ev_deregister(struct pmc_soft *ps)
{

 KASSERT(ps != ((void*)0), ("pmc_soft_deregister: called with NULL"));

 mtx_lock_spin(&pmc_softs_mtx);

 if (ps->ps_ev.pm_ev_code != 0 &&
     (ps->ps_ev.pm_ev_code - PMC_EV_SOFT_FIRST) < pmc_softevents) {
  KASSERT((int)ps->ps_ev.pm_ev_code >= PMC_EV_SOFT_FIRST &&
      (int)ps->ps_ev.pm_ev_code <= PMC_EV_SOFT_LAST,
      ("pmc_soft_deregister: invalid event value"));
  pmc_softs[ps->ps_ev.pm_ev_code - PMC_EV_SOFT_FIRST] = ((void*)0);
 }

 mtx_unlock_spin(&pmc_softs_mtx);
}
