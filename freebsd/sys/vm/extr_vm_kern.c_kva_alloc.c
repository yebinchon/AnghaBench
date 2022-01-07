
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int M_BESTFIT ;
 int M_NOWAIT ;
 int kernel_arena ;
 int round_page (int ) ;
 scalar_t__ vmem_alloc (int ,int ,int,int *) ;

vm_offset_t
kva_alloc(vm_size_t size)
{
 vm_offset_t addr;

 size = round_page(size);
 if (vmem_alloc(kernel_arena, size, M_BESTFIT | M_NOWAIT, &addr))
  return (0);

 return (addr);
}
