
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct pmc_hw {struct pmc* phw_pmc; } ;
struct TYPE_4__ {int pm_powerpc_evsel; } ;
struct TYPE_5__ {TYPE_1__ pm_powerpc; } ;
struct pmc {TYPE_2__ pm_md; } ;
struct TYPE_6__ {struct pmc_hw* pc_ppcpmcs; } ;


 scalar_t__ PMC_IS_SAMPLING_MODE (int ) ;
 int PMC_TO_MODE (struct pmc*) ;
 int PMLCax_CE ;
 int PMR_PMLCa0 ;
 int PMR_PMLCa1 ;
 int PMR_PMLCa2 ;
 int PMR_PMLCa3 ;
 int mtpmr (int ,int ) ;
 TYPE_3__** powerpc_pcpu ;

__attribute__((used)) static int
e500_start_pmc(int cpu, int ri)
{
 uint32_t config;
        struct pmc *pm;
        struct pmc_hw *phw;

 phw = &powerpc_pcpu[cpu]->pc_ppcpmcs[ri];
 pm = phw->phw_pmc;
 config = pm->pm_md.pm_powerpc.pm_powerpc_evsel;

 if (PMC_IS_SAMPLING_MODE(PMC_TO_MODE(pm)))
  config |= PMLCax_CE;


 switch (ri) {
 case 0:
  mtpmr(PMR_PMLCa0, config);
  break;
 case 1:
  mtpmr(PMR_PMLCa1, config);
  break;
 case 2:
  mtpmr(PMR_PMLCa2, config);
  break;
 case 3:
  mtpmr(PMR_PMLCa3, config);
  break;
 default:
  break;
 }

 return 0;
}
