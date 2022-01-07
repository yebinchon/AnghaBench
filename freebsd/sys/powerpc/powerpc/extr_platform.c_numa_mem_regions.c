
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct numa_mem_region {int mr_domain; scalar_t__ mr_size; scalar_t__ mr_start; } ;
struct mem_affinity {int domain; scalar_t__ end; scalar_t__ start; } ;


 int PLATFORM_NUMA_MEM_REGIONS (int ,struct numa_mem_region*,int*) ;
 struct mem_affinity* mem_info ;
 int nnumapregions ;
 struct numa_mem_region* numa_pregions ;
 int plat_obj ;
 int printf (char*) ;
 int* vm_locality_table ;
 int vm_phys_register_domains (int,struct mem_affinity*,int*) ;

void
numa_mem_regions(struct numa_mem_region **phys, int *physsz)
{
 struct mem_affinity *mi;
 int i, j, maxdom, ndomain, offset;

 nnumapregions = 0;
 PLATFORM_NUMA_MEM_REGIONS(plat_obj, numa_pregions, &nnumapregions);

 if (physsz != ((void*)0))
  *physsz = nnumapregions;
 if (phys != ((void*)0))
  *phys = numa_pregions;
 if (physsz == ((void*)0) || phys == ((void*)0)) {
  printf("unset value\n");
  return;
 }
 maxdom = 0;
 for (i = 0; i < nnumapregions; i++)
  if (numa_pregions[i].mr_domain > maxdom)
   maxdom = numa_pregions[i].mr_domain;

 mi = mem_info;
 for (i = 0; i < nnumapregions; i++, mi++) {
  mi->start = numa_pregions[i].mr_start;
  mi->end = numa_pregions[i].mr_start + numa_pregions[i].mr_size;
  mi->domain = numa_pregions[i].mr_domain;
 }
 offset = 0;
 vm_locality_table[offset] = 10;
 ndomain = maxdom + 1;
 if (ndomain > 1) {
  for (i = 0; i < ndomain; i++) {
   for (j = 0; j < ndomain; j++) {



    if (i == j)
     vm_locality_table[offset] = 10;
    else
     vm_locality_table[offset] = 21;
    offset++;
   }
  }
 }
 vm_phys_register_domains(ndomain, mem_info, vm_locality_table);
}
