
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 int M_WAITOK ;
 size_t PAGE_SIZE ;
 int VM_MEMATTR_DEFAULT ;
 scalar_t__ kmem_alloc_contig (size_t,int ,int ,unsigned long,size_t,int ,int ) ;
 size_t lio_get_order (size_t) ;
 int vtophys (void*) ;

__attribute__((used)) static inline void *
lio_dma_alloc(size_t size, vm_paddr_t *dma_handle)
{
 size_t align;
 void *mem;

 align = PAGE_SIZE << lio_get_order(size);
 mem = (void *)kmem_alloc_contig(size, M_WAITOK, 0, ~0ul, align, 0,
     VM_MEMATTR_DEFAULT);
 if (mem != ((void*)0))
  *dma_handle = vtophys(mem);
 else
  *dma_handle = 0;

 return (mem);
}
