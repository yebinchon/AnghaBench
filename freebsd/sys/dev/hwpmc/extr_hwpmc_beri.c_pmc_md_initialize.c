
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int dummy; } ;


 struct pmc_mdep* pmc_beri_initialize () ;

struct pmc_mdep *
pmc_md_initialize()
{

 return (pmc_beri_initialize());
}
