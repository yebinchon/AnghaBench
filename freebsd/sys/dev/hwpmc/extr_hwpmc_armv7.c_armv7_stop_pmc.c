
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
struct pmc {TYPE_2__ pm_md; } ;
struct TYPE_6__ {struct pmc_hw* pc_armv7pmcs; } ;


 scalar_t__ PMC_EV_CPU_CYCLES ;
 int armv7_counter_disable (int) ;
 int armv7_interrupt_disable (int) ;
 TYPE_3__** armv7_pcpu ;

__attribute__((used)) static int
armv7_stop_pmc(int cpu, int ri)
{
 struct pmc_hw *phw;
 struct pmc *pm;
 uint32_t config;

 phw = &armv7_pcpu[cpu]->pc_armv7pmcs[ri];
 pm = phw->phw_pmc;
 config = pm->pm_md.pm_armv7.pm_armv7_evsel;
 if (config == PMC_EV_CPU_CYCLES)
  ri = 31;




 armv7_counter_disable(ri);
 armv7_interrupt_disable(ri);

 return 0;
}
