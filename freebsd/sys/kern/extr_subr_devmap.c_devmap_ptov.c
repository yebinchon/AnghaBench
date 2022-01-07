
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
struct devmap_entry {scalar_t__ pd_size; scalar_t__ pd_pa; scalar_t__ pd_va; } ;


 struct devmap_entry* devmap_table ;

void *
devmap_ptov(vm_paddr_t pa, vm_size_t size)
{
 const struct devmap_entry *pd;

 if (devmap_table == ((void*)0))
  return (((void*)0));

 for (pd = devmap_table; pd->pd_size != 0; ++pd) {
  if (pa >= pd->pd_pa && pa + size <= pd->pd_pa + pd->pd_size)
   return ((void *)(pd->pd_va + (pa - pd->pd_pa)));
 }

 return (((void*)0));
}
