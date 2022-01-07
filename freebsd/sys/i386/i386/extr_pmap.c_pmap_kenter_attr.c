
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;


 int PG_RW ;
 int PG_V ;
 int kernel_pmap ;
 int pmap_cache_bits (int ,int,int ) ;
 int pte_store (int *,int) ;
 int * vtopte (int ) ;

__attribute__((used)) static __inline void
pmap_kenter_attr(vm_offset_t va, vm_paddr_t pa, int mode)
{
 pt_entry_t *pte;

 pte = vtopte(va);
 pte_store(pte, pa | PG_RW | PG_V | pmap_cache_bits(kernel_pmap,
     mode, 0));
}
