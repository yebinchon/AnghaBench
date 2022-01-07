
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int dummy; } ;


 int pmc_arm64_finalize (struct pmc_mdep*) ;

void
pmc_md_finalize(struct pmc_mdep *md)
{

 pmc_arm64_finalize(md);
}
