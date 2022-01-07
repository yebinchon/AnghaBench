
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct numa_mem_region {int dummy; } ;
typedef int platform_t ;


 int ofw_numa_mem_regions (struct numa_mem_region*,int*) ;

__attribute__((used)) static void
powernv_numa_mem_regions(platform_t plat, struct numa_mem_region *phys, int *physsz)
{

 ofw_numa_mem_regions(phys, physsz);
}
