
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pm_ev_code; int pm_ev_name; } ;
struct pmc_soft {TYPE_1__ ps_ev; scalar_t__ ps_running; } ;


 int PMC_EV_SOFT_FIRST ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pmc_soft_namecleanup (int ) ;
 int pmc_softevents ;
 struct pmc_soft** pmc_softs ;
 int pmc_softs_count ;
 int pmc_softs_mtx ;
 int printf (char*) ;

void
pmc_soft_ev_register(struct pmc_soft *ps)
{
 static int warned = 0;
 int n;

 ps->ps_running = 0;
 ps->ps_ev.pm_ev_code = 0;
 pmc_soft_namecleanup(ps->ps_ev.pm_ev_name);

 mtx_lock_spin(&pmc_softs_mtx);

 if (pmc_softs_count >= pmc_softevents) {




  for (n = 0; n < pmc_softevents; n++)
   if (pmc_softs[n] == ((void*)0))
    break;
  if (n == pmc_softevents) {
   mtx_unlock_spin(&pmc_softs_mtx);
   if (!warned) {
    printf("hwpmc: too many soft events, "
        "increase kern.hwpmc.softevents tunable\n");
    warned = 1;
   }
   return;
  }

  ps->ps_ev.pm_ev_code = PMC_EV_SOFT_FIRST + n;
  pmc_softs[n] = ps;
 } else {
  ps->ps_ev.pm_ev_code = PMC_EV_SOFT_FIRST + pmc_softs_count;
  pmc_softs[pmc_softs_count++] = ps;
 }

 mtx_unlock_spin(&pmc_softs_mtx);
}
