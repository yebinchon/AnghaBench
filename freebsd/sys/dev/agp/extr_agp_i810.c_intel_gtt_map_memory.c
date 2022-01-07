
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int u_int ;
struct sglist {int dummy; } ;


 int agp_intel_gtt_map_memory (int ,int *,int ,struct sglist**) ;
 int intel_agp ;

int
intel_gtt_map_memory(vm_page_t *pages, u_int num_entries,
    struct sglist **sg_list)
{

 return (agp_intel_gtt_map_memory(intel_agp, pages, num_entries,
     sg_list));
}
