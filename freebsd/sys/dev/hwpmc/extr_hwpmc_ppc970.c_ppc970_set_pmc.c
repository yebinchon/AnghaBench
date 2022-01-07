
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmc_hw {struct pmc* phw_pmc; } ;
struct pmc {int dummy; } ;
typedef int register_t ;
struct TYPE_2__ {struct pmc_hw* pc_ppcpmcs; } ;


 int PPC970_SET_MMCR0_PMCSEL (int ,int,int) ;
 int PPC970_SET_MMCR1_PMCSEL (int ,int,int) ;
 int SPR_970MMCR0 ;
 int SPR_970MMCR1 ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 TYPE_1__** powerpc_pcpu ;

__attribute__((used)) static int
ppc970_set_pmc(int cpu, int ri, int config)
{
 struct pmc *pm;
 struct pmc_hw *phw;
 register_t pmc_mmcr;

 phw = &powerpc_pcpu[cpu]->pc_ppcpmcs[ri];
 pm = phw->phw_pmc;




 switch (ri) {
 case 0:
 case 1:
  pmc_mmcr = mfspr(SPR_970MMCR0);
  pmc_mmcr = PPC970_SET_MMCR0_PMCSEL(pmc_mmcr, config, ri);
  mtspr(SPR_970MMCR0, pmc_mmcr);
  break;
 case 2:
 case 3:
 case 4:
 case 5:
 case 6:
 case 7:
  pmc_mmcr = mfspr(SPR_970MMCR1);
  pmc_mmcr = PPC970_SET_MMCR1_PMCSEL(pmc_mmcr, config, ri);
  mtspr(SPR_970MMCR1, pmc_mmcr);
  break;
 }
 return 0;
}
