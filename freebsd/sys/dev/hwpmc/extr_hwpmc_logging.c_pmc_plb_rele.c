
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmclog_buffer {size_t plb_domain; } ;
struct TYPE_2__ {int pdbh_mtx; } ;


 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 TYPE_1__** pmc_dom_hdrs ;
 int pmc_plb_rele_unlocked (struct pmclog_buffer*) ;

__attribute__((used)) static inline void
pmc_plb_rele(struct pmclog_buffer *plb)
{
 mtx_lock_spin(&pmc_dom_hdrs[plb->plb_domain]->pdbh_mtx);
 pmc_plb_rele_unlocked(plb);
 mtx_unlock_spin(&pmc_dom_hdrs[plb->plb_domain]->pdbh_mtx);
}
