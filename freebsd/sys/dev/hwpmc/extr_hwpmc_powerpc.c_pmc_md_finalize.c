
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int dummy; } ;


 int M_PMC ;
 int free (int *,int ) ;
 int * powerpc_pcpu ;

void
pmc_md_finalize(struct pmc_mdep *md)
{

 free(powerpc_pcpu, M_PMC);
 powerpc_pcpu = ((void*)0);
}
