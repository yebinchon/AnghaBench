
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmclog_buffer {int plb_base; } ;
struct TYPE_2__ {int pdbh_plbs; int pdbh_head; } ;


 int M_PMC ;
 struct pmclog_buffer* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct pmclog_buffer*,int ) ;
 int free (int ,int ) ;
 int mtx_destroy (int *) ;
 int plb_next ;
 TYPE_1__** pmc_dom_hdrs ;
 int pmc_kthread_mtx ;
 int vm_ndomains ;

void
pmclog_shutdown()
{
 struct pmclog_buffer *plb;
 int domain;

 mtx_destroy(&pmc_kthread_mtx);

 for (domain = 0; domain < vm_ndomains; domain++) {
  while ((plb = TAILQ_FIRST(&pmc_dom_hdrs[domain]->pdbh_head)) != ((void*)0)) {
   TAILQ_REMOVE(&pmc_dom_hdrs[domain]->pdbh_head, plb, plb_next);
   free(plb->plb_base, M_PMC);
  }
  free(pmc_dom_hdrs[domain]->pdbh_plbs, M_PMC);
 }
}
