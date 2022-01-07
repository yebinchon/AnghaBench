
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pmc_hw {struct pmc* phw_pmc; } ;
struct TYPE_4__ {scalar_t__ pm_armv7_evsel; } ;
struct TYPE_5__ {TYPE_1__ pm_armv7; } ;
struct pmc {scalar_t__ pm_overflowcnt; TYPE_2__ pm_md; } ;
struct TYPE_6__ {struct pmc_hw* pc_armv7pmcs; } ;


 scalar_t__ PMC_EV_CPU_CYCLES ;
 int armv7_counter_enable (int) ;
 int armv7_interrupt_enable (int) ;
 TYPE_3__** armv7_pcpu ;
 int cp15_pmselr_set (int) ;
 int cp15_pmxevtyper_set (scalar_t__) ;

__attribute__((used)) static int
armv7_start_pmc(int cpu, int ri)
{
 struct pmc_hw *phw;
 uint32_t config;
 struct pmc *pm;

 phw = &armv7_pcpu[cpu]->pc_armv7pmcs[ri];
 pm = phw->phw_pmc;
 config = pm->pm_md.pm_armv7.pm_armv7_evsel;

 pm->pm_overflowcnt = 0;




 if (config != PMC_EV_CPU_CYCLES) {
  cp15_pmselr_set(ri);
  cp15_pmxevtyper_set(config);
 } else
  ri = 31;




 armv7_interrupt_enable(ri);
 armv7_counter_enable(ri);

 return 0;
}
