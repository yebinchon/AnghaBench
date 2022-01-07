
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int dummy; } ;


 void pmc_beri_finalize (struct pmc_mdep*) ;

void
pmc_md_finalize(struct pmc_mdep *md)
{

 return (pmc_beri_finalize(md));
}
