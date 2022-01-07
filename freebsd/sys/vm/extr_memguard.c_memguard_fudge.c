
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct vm_map {int dummy; } ;
struct TYPE_2__ {int v_page_count; } ;


 int PAGE_SIZE ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int memguard_mapsize ;
 int memguard_physlimit ;
 int round_page (int) ;
 TYPE_1__ vm_cnt ;
 int vm_map_max (struct vm_map const*) ;
 int vm_map_min (struct vm_map const*) ;
 int vm_memguard_divisor ;

unsigned long
memguard_fudge(unsigned long km_size, const struct vm_map *parent_map)
{
 u_long mem_pgs, parent_size;

 vm_memguard_divisor = 10;

 TUNABLE_INT_FETCH("vm.memguard.divisor", &vm_memguard_divisor);

 parent_size = vm_map_max(parent_map) - vm_map_min(parent_map) +
     PAGE_SIZE;

 if ((vm_memguard_divisor <= 0) ||
     ((parent_size / vm_memguard_divisor) == 0))
  vm_memguard_divisor = 10;







 mem_pgs = vm_cnt.v_page_count;
 memguard_physlimit = (mem_pgs / vm_memguard_divisor) * PAGE_SIZE;






 memguard_mapsize = round_page(parent_size / vm_memguard_divisor);
 if (memguard_mapsize / (2 * PAGE_SIZE) > mem_pgs)
  memguard_mapsize = mem_pgs * 2 * PAGE_SIZE;
 if (km_size + memguard_mapsize > parent_size)
  memguard_mapsize = 0;
 return (km_size + memguard_mapsize);
}
