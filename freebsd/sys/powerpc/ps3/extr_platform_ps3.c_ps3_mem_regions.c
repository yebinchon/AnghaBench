
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mem_region {int mr_size; scalar_t__ mr_start; } ;
typedef int platform_t ;


 int OF_finddevice (char*) ;
 int lv1_allocate_memory (int,int,int ,int,scalar_t__*,int *) ;
 int lv1_get_logical_partition_id (int *) ;
 int lv1_get_repository_node_value (int ,int,int,int ,int ,int*,int *) ;
 int lv1_repository_string (char*) ;
 int ofw_mem_regions (struct mem_region*,int*,struct mem_region*,int*) ;
 int ps3_real_maxaddr (int ) ;

void
ps3_mem_regions(platform_t plat, struct mem_region *phys, int *physsz,
    struct mem_region *avail_regions, int *availsz)
{
 uint64_t lpar_id, junk;
 int i;


 if (OF_finddevice("/") != -1) {
  ofw_mem_regions(phys, physsz, avail_regions, availsz);
 } else {

  phys[0].mr_start = 0;
  phys[0].mr_size = ps3_real_maxaddr(plat);
  *physsz = *availsz = 1;
  avail_regions[0] = phys[0];
 }


 lv1_get_logical_partition_id(&lpar_id);
 lv1_get_repository_node_value(lpar_id,
     lv1_repository_string("bi") >> 32,
     lv1_repository_string("rgntotal"), 0, 0,
     &phys[*physsz].mr_size, &junk);
 for (i = 0; i < *physsz; i++)
  phys[*physsz].mr_size -= phys[i].mr_size;


 phys[*physsz].mr_size -= phys[*physsz].mr_size % (16*1024*1024);


 lv1_allocate_memory(phys[*physsz].mr_size, 24 ,
     0, 0x04 , &phys[*physsz].mr_start, &junk);
 avail_regions[*availsz] = phys[*physsz];
 (*physsz)++;
 (*availsz)++;
}
