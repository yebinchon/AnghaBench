
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int dummy; } ;


 int INI ;
 int MDP ;
 int M_PMC ;
 int PMCDBG0 (int ,int ,int,char*) ;
 int free (int *,int ) ;
 int * uncore_pcpu ;

void
pmc_uncore_finalize(struct pmc_mdep *md)
{
 PMCDBG0(MDP,INI,1, "uncore-finalize");

 free(uncore_pcpu, M_PMC);
 uncore_pcpu = ((void*)0);
}
