
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pc_corepmcs; } ;
struct TYPE_3__ {struct pmc* phw_pmc; } ;


 int core_iaf_ri ;
 TYPE_2__** core_pcpu ;

__attribute__((used)) static int
iaf_get_config(int cpu, int ri, struct pmc **ppm)
{
 *ppm = core_pcpu[cpu]->pc_corepmcs[ri + core_iaf_ri].phw_pmc;

 return (0);
}
