
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmc_hw {struct pmc* phw_pmc; } ;
struct pmc {int dummy; } ;
typedef int register_t ;
struct TYPE_2__ {struct pmc_hw* pc_ppcpmcs; } ;


 int PMLCax_FC ;
 int PMR_PMLCa0 ;
 int PMR_PMLCa1 ;
 int PMR_PMLCa2 ;
 int PMR_PMLCa3 ;
 int mfpmr (int ) ;
 int mtpmr (int ,int ) ;
 TYPE_1__** powerpc_pcpu ;

__attribute__((used)) static int
e500_stop_pmc(int cpu, int ri)
{
        struct pmc *pm;
        struct pmc_hw *phw;
        register_t pmc_pmlc;

 phw = &powerpc_pcpu[cpu]->pc_ppcpmcs[ri];
 pm = phw->phw_pmc;




 switch (ri) {
 case 0:
  pmc_pmlc = mfpmr(PMR_PMLCa0);
  pmc_pmlc |= PMLCax_FC;
  mtpmr(PMR_PMLCa0, pmc_pmlc);
  break;
 case 1:
  pmc_pmlc = mfpmr(PMR_PMLCa1);
  pmc_pmlc |= PMLCax_FC;
  mtpmr(PMR_PMLCa1, pmc_pmlc);
  break;
 case 2:
  pmc_pmlc = mfpmr(PMR_PMLCa2);
  pmc_pmlc |= PMLCax_FC;
  mtpmr(PMR_PMLCa2, pmc_pmlc);
  break;
 case 3:
  pmc_pmlc = mfpmr(PMR_PMLCa3);
  pmc_pmlc |= PMLCax_FC;
  mtpmr(PMR_PMLCa3, pmc_pmlc);
  break;
 default:
  break;
 }
 return 0;
}
