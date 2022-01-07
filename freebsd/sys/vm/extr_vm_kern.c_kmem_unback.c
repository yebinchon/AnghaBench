
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;


 int _kmem_unback (int ,int ,int ) ;

void
kmem_unback(vm_object_t object, vm_offset_t addr, vm_size_t size)
{

 (void)_kmem_unback(object, addr, size);
}
