
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmc_hw {struct pmc* phw_pmc; } ;
struct pmc {int dummy; } ;
typedef int register_t ;
struct TYPE_2__ {struct pmc_hw* pc_ppcpmcs; } ;


 int PPC_SET_PMC1SEL (int ,int ) ;
 int PPC_SET_PMC2SEL (int ,int ) ;
 int PPC_SET_PMC3SEL (int ,int ) ;
 int PPC_SET_PMC4SEL (int ,int ) ;
 int PPC_SET_PMC5SEL (int ,int ) ;
 int PPC_SET_PMC6SEL (int ,int ) ;
 int SPR_MMCR0 ;
 int SPR_MMCR1 ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 TYPE_1__** powerpc_pcpu ;

__attribute__((used)) static int
mpc7xxx_stop_pmc(int cpu, int ri)
{
        struct pmc *pm;
        struct pmc_hw *phw;
        register_t pmc_mmcr;

 phw = &powerpc_pcpu[cpu]->pc_ppcpmcs[ri];
 pm = phw->phw_pmc;




 switch (ri) {
 case 0:
  pmc_mmcr = mfspr(SPR_MMCR0);
  pmc_mmcr = PPC_SET_PMC1SEL(pmc_mmcr, 0);
  mtspr(SPR_MMCR0, pmc_mmcr);
  break;
 case 1:
  pmc_mmcr = mfspr(SPR_MMCR0);
  pmc_mmcr = PPC_SET_PMC2SEL(pmc_mmcr, 0);
  mtspr(SPR_MMCR0, pmc_mmcr);
  break;
 case 2:
  pmc_mmcr = mfspr(SPR_MMCR1);
  pmc_mmcr = PPC_SET_PMC3SEL(pmc_mmcr, 0);
  mtspr(SPR_MMCR1, pmc_mmcr);
  break;
 case 3:
  pmc_mmcr = mfspr(SPR_MMCR0);
  pmc_mmcr = PPC_SET_PMC4SEL(pmc_mmcr, 0);
  mtspr(SPR_MMCR0, pmc_mmcr);
  break;
 case 4:
  pmc_mmcr = mfspr(SPR_MMCR1);
  pmc_mmcr = PPC_SET_PMC5SEL(pmc_mmcr, 0);
  mtspr(SPR_MMCR1, pmc_mmcr);
  break;
 case 5:
  pmc_mmcr = mfspr(SPR_MMCR1);
  pmc_mmcr = PPC_SET_PMC6SEL(pmc_mmcr, 0);
  mtspr(SPR_MMCR1, pmc_mmcr);
  break;
 default:
  break;
 }
 return 0;
}
