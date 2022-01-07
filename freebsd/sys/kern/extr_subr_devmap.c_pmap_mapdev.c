
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int KASSERT (int,char*) ;
 int L2_SIZE ;
 int PAGE_MASK ;
 int VM_MAX_KERNEL_ADDRESS ;
 int akva_devmap_vaddr ;
 void* devmap_ptov (int,int ) ;
 scalar_t__ early_boot ;
 int kva_alloc (int ) ;
 int panic (char*) ;
 int pmap_kenter_device (int,int ,int) ;
 int round_page (int ) ;
 void* trunc_page (int) ;

void *
pmap_mapdev(vm_offset_t pa, vm_size_t size)
{
 vm_offset_t va, offset;
 void * rva;


 if ((rva = devmap_ptov(pa, size)) != ((void*)0))
  return (rva);

 offset = pa & PAGE_MASK;
 pa = trunc_page(pa);
 size = round_page(size + offset);
  va = kva_alloc(size);
 if (!va)
  panic("pmap_mapdev: Couldn't alloc kernel virtual memory");

 pmap_kenter_device(va, size, pa);

 return ((void *)(va + offset));
}
