
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vmem_release_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
struct vm_page {int dummy; } ;
struct TYPE_9__ {int * vmd_kernel_rwx_arena; int * vmd_kernel_arena; } ;
struct TYPE_8__ {int system_map; } ;


 int KERNBASE ;
 int KVA_QUANTUM ;
 int MAP_NOFAULT ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int VM_MIN_KERNEL_ADDRESS ;
 int VM_PROT_ALL ;
 int VM_PROT_RW ;
 int * kernel_arena ;
 TYPE_1__* kernel_map ;
 int kernel_pmap ;
 int kva_import ;
 int kva_import_domain ;
 scalar_t__ round_2mpage (int) ;
 TYPE_6__* vm_dom ;
 TYPE_1__* vm_map_create (int ,int ,scalar_t__) ;
 int vm_map_insert (TYPE_1__*,int *,int ,scalar_t__,scalar_t__,int ,int ,int ,...) ;
 int vm_map_lock (TYPE_1__*) ;
 int vm_map_unlock (TYPE_1__*) ;
 int vm_ndomains ;
 scalar_t__ vm_page_array ;
 int vm_page_array_size ;
 void* vmem_create (char*,int ,int ,int ,int ,int ) ;
 int vmem_init (int *,char*,int ,int ,int ,int ,int ) ;
 int vmem_set_import (int *,int ,int *,int *,int ) ;
 scalar_t__ vmem_xfree ;

void
kmem_init(vm_offset_t start, vm_offset_t end)
{
 vm_map_t m;
 int domain;

 m = vm_map_create(kernel_pmap, VM_MIN_KERNEL_ADDRESS, end);
 m->system_map = 1;
 vm_map_lock(m);

 kernel_map = m;
 (void)vm_map_insert(m, ((void*)0), 0,

     KERNBASE,



     start, VM_PROT_ALL, VM_PROT_ALL, MAP_NOFAULT);
 (void)vm_map_insert(m, ((void*)0), 0, (vm_offset_t)vm_page_array,
     (vm_offset_t)vm_page_array + round_2mpage(vm_page_array_size *
     sizeof(struct vm_page)),
     VM_PROT_RW, VM_PROT_RW, MAP_NOFAULT);

 vm_map_unlock(m);




 vmem_init(kernel_arena, "kernel arena", 0, 0, PAGE_SIZE, 0, 0);
 vmem_set_import(kernel_arena, kva_import, ((void*)0), ((void*)0), KVA_QUANTUM);

 for (domain = 0; domain < vm_ndomains; domain++) {






  vm_dom[domain].vmd_kernel_arena = vmem_create(
      "kernel arena domain", 0, 0, PAGE_SIZE, 0, M_WAITOK);
  vmem_set_import(vm_dom[domain].vmd_kernel_arena,
      kva_import_domain, ((void*)0), kernel_arena, KVA_QUANTUM);
 }
}
