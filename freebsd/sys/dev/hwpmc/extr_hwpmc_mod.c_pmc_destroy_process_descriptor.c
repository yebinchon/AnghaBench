
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_thread {int dummy; } ;
struct pmc_process {int pp_tds; } ;


 struct pmc_thread* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct pmc_thread*,int ) ;
 int M_PMC ;
 int free (struct pmc_process*,int ) ;
 int pmc_thread_descriptor_pool_free (struct pmc_thread*) ;
 int pt_next ;

__attribute__((used)) static void
pmc_destroy_process_descriptor(struct pmc_process *pp)
{
 struct pmc_thread *pmc_td;

 while ((pmc_td = LIST_FIRST(&pp->pp_tds)) != ((void*)0)) {
  LIST_REMOVE(pmc_td, pt_next);
  pmc_thread_descriptor_pool_free(pmc_td);
 }
 free(pp, M_PMC);
}
