
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_pcpu_state {int dummy; } ;
struct pmc {void* pm_pcpu_state; int pm_runcount; } ;


 int ALL ;
 int M_PMC ;
 int M_WAITOK ;
 int M_ZERO ;
 int PMC ;
 int PMCDBG1 (int ,int ,int,char*,struct pmc*) ;
 int counter_u64_alloc (int) ;
 void* malloc (int,int ,int) ;
 int mp_ncpus ;

__attribute__((used)) static struct pmc *
pmc_allocate_pmc_descriptor(void)
{
 struct pmc *pmc;

 pmc = malloc(sizeof(struct pmc), M_PMC, M_WAITOK|M_ZERO);
 pmc->pm_runcount = counter_u64_alloc(M_WAITOK);
 pmc->pm_pcpu_state = malloc(sizeof(struct pmc_pcpu_state)*mp_ncpus, M_PMC, M_WAITOK|M_ZERO);
 PMCDBG1(PMC,ALL,1, "allocate-pmc -> pmc=%p", pmc);

 return pmc;
}
