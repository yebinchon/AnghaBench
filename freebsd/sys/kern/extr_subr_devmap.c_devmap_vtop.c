
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct devmap_entry {scalar_t__ pd_size; scalar_t__ pd_va; scalar_t__ pd_pa; } ;


 int DEVMAP_PADDR_NOTFOUND ;
 struct devmap_entry* devmap_table ;

vm_paddr_t
devmap_vtop(void * vpva, vm_size_t size)
{
 const struct devmap_entry *pd;
 vm_offset_t va;

 if (devmap_table == ((void*)0))
  return (DEVMAP_PADDR_NOTFOUND);

 va = (vm_offset_t)vpva;
 for (pd = devmap_table; pd->pd_size != 0; ++pd) {
  if (va >= pd->pd_va && va + size <= pd->pd_va + pd->pd_size)
   return ((vm_paddr_t)(pd->pd_pa + (va - pd->pd_va)));
 }

 return (DEVMAP_PADDR_NOTFOUND);
}
