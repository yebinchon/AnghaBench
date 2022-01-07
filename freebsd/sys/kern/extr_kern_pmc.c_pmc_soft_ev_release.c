
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_soft {int dummy; } ;


 int mtx_unlock_spin (int *) ;
 int pmc_softs_mtx ;

void
pmc_soft_ev_release(struct pmc_soft *ps)
{

 mtx_unlock_spin(&pmc_softs_mtx);
}
