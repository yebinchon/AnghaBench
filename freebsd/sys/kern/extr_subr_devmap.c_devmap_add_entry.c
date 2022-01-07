
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
struct devmap_entry {int pd_pa; int pd_size; scalar_t__ pd_va; } ;


 int AKVA_DEVMAP_MAX_ENTRIES ;
 struct devmap_entry* akva_devmap_entries ;
 int akva_devmap_idx ;
 scalar_t__ akva_devmap_vaddr ;
 scalar_t__ devmap_bootstrap_done ;
 int devmap_register_table (struct devmap_entry*) ;
 int panic (char*) ;
 scalar_t__ trunc_1mpage (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

void
devmap_add_entry(vm_paddr_t pa, vm_size_t sz)
{
 struct devmap_entry *m;

 if (devmap_bootstrap_done)
  panic("devmap_add_entry() after devmap_bootstrap()");

 if (akva_devmap_idx == (AKVA_DEVMAP_MAX_ENTRIES - 1))
  panic("AKVA_DEVMAP_MAX_ENTRIES is too small");

 if (akva_devmap_idx == 0)
  devmap_register_table(akva_devmap_entries);
 {
  akva_devmap_vaddr = trunc_page(akva_devmap_vaddr - sz);
 }
 m = &akva_devmap_entries[akva_devmap_idx++];
 m->pd_va = akva_devmap_vaddr;
 m->pd_pa = pa;
 m->pd_size = sz;
}
