
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {int dummy; } ;
typedef int platform_t ;


 int ofw_mem_regions (struct mem_region*,int*,struct mem_region*,int*) ;

void
bare_mem_regions(platform_t plat, struct mem_region *phys, int *physsz,
    struct mem_region *avail, int *availsz)
{

 ofw_mem_regions(phys, physsz, avail, availsz);
}
