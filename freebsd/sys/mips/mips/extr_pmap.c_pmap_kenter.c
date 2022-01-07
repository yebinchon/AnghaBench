
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef int u_long ;


 int KASSERT (int ,char*) ;
 int VM_MEMATTR_DEFAULT ;
 int is_cacheable_mem (scalar_t__) ;
 int pmap_kenter_attr (int ,scalar_t__,int ) ;

void
pmap_kenter(vm_offset_t va, vm_paddr_t pa)
{

 KASSERT(is_cacheable_mem(pa),
  ("pmap_kenter: memory at 0x%lx is not cacheable", (u_long)pa));

 pmap_kenter_attr(va, pa, VM_MEMATTR_DEFAULT);
}
