
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct mem_region {int dummy; } ;
struct TYPE_2__ {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 int EFAULT ;
 int mem_regions (struct mem_region**,int*,struct mem_region**,int*) ;
 int npregions ;
 TYPE_1__* pregions ;

int
mem_valid(vm_offset_t addr, int len)
{
 int i;

 if (npregions == 0) {
  struct mem_region *p, *a;
  int na, np;
  mem_regions(&p, &np, &a, &na);
 }

 for (i = 0; i < npregions; i++)
  if ((addr >= pregions[i].mr_start)
     && (addr + len <= pregions[i].mr_start + pregions[i].mr_size))
   return (0);

 return (EFAULT);
}
