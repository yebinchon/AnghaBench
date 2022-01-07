
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int BUS_SPACE_MAXADDR_32BIT ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int kmem_alloc_attr (int ,int,int ,int ,int ) ;

__attribute__((used)) static inline vm_offset_t drm_vmalloc_dma(vm_size_t size)
{
 return kmem_alloc_attr(size, M_NOWAIT | M_ZERO, 0,
     BUS_SPACE_MAXADDR_32BIT, VM_MEMATTR_WRITE_COMBINING);
}
