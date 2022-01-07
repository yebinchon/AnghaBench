
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct malloc_type {int dummy; } ;


 int VM_MEMATTR_DEFAULT ;
 scalar_t__ kmem_alloc_contig (unsigned long,int,int ,int ,unsigned long,int ,int ) ;
 int malloc_type_allocated (struct malloc_type*,int ) ;
 int round_page (unsigned long) ;

void *
contigmalloc(unsigned long size, struct malloc_type *type, int flags,
    vm_paddr_t low, vm_paddr_t high, unsigned long alignment,
    vm_paddr_t boundary)
{
 void *ret;

 ret = (void *)kmem_alloc_contig(size, flags, low, high, alignment,
     boundary, VM_MEMATTR_DEFAULT);
 if (ret != ((void*)0))
  malloc_type_allocated(type, round_page(size));
 return (ret);
}
