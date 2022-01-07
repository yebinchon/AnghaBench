
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int kernel_arena ;
 int round_page (int ) ;
 int vmem_free (int ,int ,int ) ;

void
kva_free(vm_offset_t addr, vm_size_t size)
{

 size = round_page(size);
 vmem_free(kernel_arena, addr, size);
}
