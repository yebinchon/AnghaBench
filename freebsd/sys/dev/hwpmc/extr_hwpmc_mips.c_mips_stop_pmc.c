
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmc_hw {struct pmc* phw_pmc; } ;
struct pmc {int dummy; } ;
struct TYPE_2__ {struct pmc_hw* pc_mipspmcs; } ;


 TYPE_1__** mips_pcpu ;
 int mips_wr_perfcnt0 (int ) ;
 int mips_wr_perfcnt2 (int ) ;

__attribute__((used)) static int
mips_stop_pmc(int cpu, int ri)
{
        struct pmc *pm;
        struct pmc_hw *phw;

 phw = &mips_pcpu[cpu]->pc_mipspmcs[ri];
 pm = phw->phw_pmc;







 switch (ri) {
 case 0:
  mips_wr_perfcnt0(0);
  break;
 case 1:
  mips_wr_perfcnt2(0);
  break;
 default:
  break;
 }
 return 0;
}
