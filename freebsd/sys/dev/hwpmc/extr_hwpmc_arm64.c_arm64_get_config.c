
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pc_arm64pmcs; } ;
struct TYPE_3__ {struct pmc* phw_pmc; } ;


 TYPE_2__** arm64_pcpu ;

__attribute__((used)) static int
arm64_get_config(int cpu, int ri, struct pmc **ppm)
{

 *ppm = arm64_pcpu[cpu]->pc_arm64pmcs[ri].phw_pmc;

 return (0);
}
