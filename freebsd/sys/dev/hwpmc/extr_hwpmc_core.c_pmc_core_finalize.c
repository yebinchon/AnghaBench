
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int dummy; } ;


 int INI ;
 int MDP ;
 int M_PMC ;
 int PMCDBG0 (int ,int ,int,char*) ;
 int * core_pcpu ;
 int free (int *,int ) ;

void
pmc_core_finalize(struct pmc_mdep *md)
{
 PMCDBG0(MDP,INI,1, "core-finalize");

 free(core_pcpu, M_PMC);
 core_pcpu = ((void*)0);
}
