
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int dummy; } ;


 int M_PMC ;
 int free (struct pmc_mdep*,int ) ;
 int pmc_soft_finalize (struct pmc_mdep*) ;

void
pmc_mdep_free(struct pmc_mdep *md)
{
 pmc_soft_finalize(md);
 free(md, M_PMC);
}
