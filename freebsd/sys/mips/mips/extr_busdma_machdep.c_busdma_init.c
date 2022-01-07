
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_dmamap {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int * busdma_bufalloc_alloc_uncacheable ;
 void* busdma_bufalloc_create (char*,int ,int *,int *,int ) ;
 int * busdma_bufalloc_free_uncacheable ;
 void* coherent_allocator ;
 int dmamap_ctor ;
 int dmamap_dtor ;
 int dmamap_zone ;
 int mips_dcache_max_linesize ;
 void* standard_allocator ;
 int uma_zcreate (char*,int,int ,int ,int *,int *,int ,int ) ;

__attribute__((used)) static void
busdma_init(void *dummy)
{


 dmamap_zone = uma_zcreate("dma maps", sizeof(struct bus_dmamap),
     dmamap_ctor, dmamap_dtor, ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);


 standard_allocator = busdma_bufalloc_create("buffer",
     mips_dcache_max_linesize,
     ((void*)0),
     ((void*)0),
     0);





 coherent_allocator = busdma_bufalloc_create("coherent",
     mips_dcache_max_linesize,
     busdma_bufalloc_alloc_uncacheable,
     busdma_bufalloc_free_uncacheable,
     0);
}
