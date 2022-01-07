
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sec_dma_mem {int dma_paddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
sec_alloc_dma_mem_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct sec_dma_mem *dma_mem = arg;

 if (error)
  return;

 KASSERT(nseg == 1, ("Wrong number of segments, should be 1"));
 dma_mem->dma_paddr = segs->ds_addr;
}
