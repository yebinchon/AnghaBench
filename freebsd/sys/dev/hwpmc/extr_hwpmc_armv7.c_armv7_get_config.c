
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pc_armv7pmcs; } ;
struct TYPE_3__ {struct pmc* phw_pmc; } ;


 TYPE_2__** armv7_pcpu ;

__attribute__((used)) static int
armv7_get_config(int cpu, int ri, struct pmc **ppm)
{

 *ppm = armv7_pcpu[cpu]->pc_armv7pmcs[ri].phw_pmc;

 return 0;
}
