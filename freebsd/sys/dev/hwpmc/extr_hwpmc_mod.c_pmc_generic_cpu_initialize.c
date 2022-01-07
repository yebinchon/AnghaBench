
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int pmd_switch_out; int pmd_switch_in; int * pmd_pcpu_fini; int * pmd_pcpu_init; int pmd_cputype; } ;


 int PMC_CPU_GENERIC ;
 int generic_switch_in ;
 int generic_switch_out ;
 struct pmc_mdep* pmc_mdep_alloc (int ) ;

__attribute__((used)) static struct pmc_mdep *
pmc_generic_cpu_initialize(void)
{
 struct pmc_mdep *md;

 md = pmc_mdep_alloc(0);

 md->pmd_cputype = PMC_CPU_GENERIC;

 md->pmd_pcpu_init = ((void*)0);
 md->pmd_pcpu_fini = ((void*)0);
 md->pmd_switch_in = generic_switch_in;
 md->pmd_switch_out = generic_switch_out;

 return (md);
}
