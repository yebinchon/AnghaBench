
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist {int dummy; } ;


 int agp_intel_gtt_unmap_memory (int ,struct sglist*) ;
 int intel_agp ;

void
intel_gtt_unmap_memory(struct sglist *sg_list)
{

 agp_intel_gtt_unmap_memory(intel_agp, sg_list);
}
