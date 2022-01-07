
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pd_entry_t ;


 scalar_t__ PHYS_TO_DMAP (int ) ;
 int PTE_TO_PHYS (int ) ;
 size_t pmap_l2_index (int ) ;
 int pmap_load (int *) ;

__attribute__((used)) static __inline pd_entry_t *
pmap_l1_to_l2(pd_entry_t *l1, vm_offset_t va)
{
 vm_paddr_t phys;
 pd_entry_t *l2;

 phys = PTE_TO_PHYS(pmap_load(l1));
 l2 = (pd_entry_t *)PHYS_TO_DMAP(phys);

 return (&l2[pmap_l2_index(va)]);
}
