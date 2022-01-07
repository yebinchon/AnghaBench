
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_memattr_t ;


 int PTE_C (scalar_t__) ;
 scalar_t__ VM_MEMATTR_UNCACHEABLE ;
 scalar_t__ VM_MEMATTR_WRITE_BACK ;
 int is_cacheable_mem (int ) ;
 scalar_t__ pmap_page_get_memattr (int ) ;

__attribute__((used)) static __inline int
pmap_pte_cache_bits(vm_paddr_t pa, vm_page_t m)
{
 vm_memattr_t ma;

 ma = pmap_page_get_memattr(m);
 if (ma == VM_MEMATTR_WRITE_BACK && !is_cacheable_mem(pa))
  ma = VM_MEMATTR_UNCACHEABLE;
 return PTE_C(ma);
}
