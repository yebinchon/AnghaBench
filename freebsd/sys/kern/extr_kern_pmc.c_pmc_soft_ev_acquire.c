
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_soft {int dummy; } ;
typedef enum pmc_event { ____Placeholder_pmc_event } pmc_event ;


 int KASSERT (int,char*) ;
 int PMC_EV_SOFT_FIRST ;
 int PMC_EV_SOFT_LAST ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pmc_softevents ;
 struct pmc_soft** pmc_softs ;
 int pmc_softs_mtx ;

struct pmc_soft *
pmc_soft_ev_acquire(enum pmc_event ev)
{
 struct pmc_soft *ps;

 if (ev == 0 || (ev - PMC_EV_SOFT_FIRST) >= pmc_softevents)
  return ((void*)0);

 KASSERT((int)ev >= PMC_EV_SOFT_FIRST &&
     (int)ev <= PMC_EV_SOFT_LAST,
     ("event out of range"));

 mtx_lock_spin(&pmc_softs_mtx);

 ps = pmc_softs[ev - PMC_EV_SOFT_FIRST];
 if (ps == ((void*)0))
  mtx_unlock_spin(&pmc_softs_mtx);

 return ps;
}
