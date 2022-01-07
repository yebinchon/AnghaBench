
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef scalar_t__ u_int32_t ;
struct bios_smap {int dummy; } ;


 int add_smap_entry (struct bios_smap*,int *,int*) ;

__attribute__((used)) static void
add_smap_entries(struct bios_smap *smapbase, vm_paddr_t *physmap,
    int *physmap_idxp)
{
 struct bios_smap *smap, *smapend;
 u_int32_t smapsize;







 smapsize = *((u_int32_t *)smapbase - 1);
 smapend = (struct bios_smap *)((uintptr_t)smapbase + smapsize);

 for (smap = smapbase; smap < smapend; smap++)
  if (!add_smap_entry(smap, physmap, physmap_idxp))
   break;
}
