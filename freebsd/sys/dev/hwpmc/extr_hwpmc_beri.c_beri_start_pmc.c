
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct pmc_hw {struct pmc* phw_pmc; } ;
struct TYPE_4__ {size_t pm_mips_evsel; } ;
struct pmc {TYPE_1__ pm_md; } ;
typedef int pmc_value_t ;
struct TYPE_6__ {int (* get_func ) () ;} ;
struct TYPE_5__ {int * start_values; struct pmc_hw* pc_beripmcs; } ;


 TYPE_3__* beri_event_codes ;
 TYPE_2__** beri_pcpu ;
 int stub1 () ;

__attribute__((used)) static int
beri_start_pmc(int cpu, int ri)
{
 uint32_t config;
        struct pmc *pm;
        struct pmc_hw *phw;
 pmc_value_t v;

 phw = &beri_pcpu[cpu]->pc_beripmcs[ri];
 pm = phw->phw_pmc;
 config = pm->pm_md.pm_mips_evsel;

 v = beri_event_codes[config].get_func();
 beri_pcpu[cpu]->start_values[config] = v;

 return (0);
}
