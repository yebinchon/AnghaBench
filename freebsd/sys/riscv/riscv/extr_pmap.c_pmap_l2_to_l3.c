
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pd_entry_t ;


 scalar_t__ PHYS_TO_DMAP (int ) ;
 int PTE_TO_PHYS (int ) ;
 size_t pmap_l3_index (int ) ;
 int pmap_load (int *) ;

__attribute__((used)) static __inline pt_entry_t *
pmap_l2_to_l3(pd_entry_t *l2, vm_offset_t va)
{
 vm_paddr_t phys;
 pt_entry_t *l3;

 phys = PTE_TO_PHYS(pmap_load(l2));
 l3 = (pd_entry_t *)PHYS_TO_DMAP(phys);

 return (&l3[pmap_l3_index(va)]);
}
