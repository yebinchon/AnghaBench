
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
struct vmem {int dummy; } ;


 struct vmem* _kmem_unback (int ,int ,int ) ;
 int kernel_object ;
 int round_page (int ) ;
 int vmem_free (struct vmem*,int ,int ) ;

void
kmem_free(vm_offset_t addr, vm_size_t size)
{
 struct vmem *arena;

 size = round_page(size);
 arena = _kmem_unback(kernel_object, addr, size);
 if (arena != ((void*)0))
  vmem_free(arena, addr, size);
}
