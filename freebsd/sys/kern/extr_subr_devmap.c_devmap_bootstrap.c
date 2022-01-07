
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct devmap_entry {scalar_t__ pd_size; int pd_pa; int pd_va; } ;


 int PTE_DEVICE ;
 int VM_MEMATTR_DEVICE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int devmap_bootstrap_done ;
 struct devmap_entry const* devmap_table ;
 int pmap_kenter_device (int ,scalar_t__,int ) ;
 int pmap_map_chunk (int ,int ,int ,scalar_t__,int,int ) ;
 int pmap_preboot_map_attr (int ,int ,scalar_t__,int,int ) ;

void
devmap_bootstrap(vm_offset_t l1pt, const struct devmap_entry *table)
{
 const struct devmap_entry *pd;

 devmap_bootstrap_done = 1;





 if (table != ((void*)0))
  devmap_table = table;
 else if (devmap_table == ((void*)0))
  return;

 for (pd = devmap_table; pd->pd_size != 0; ++pd) {
 }
}
