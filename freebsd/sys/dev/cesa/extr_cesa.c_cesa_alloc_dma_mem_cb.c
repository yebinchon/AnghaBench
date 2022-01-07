
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cesa_dma_mem {int cdm_paddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
cesa_alloc_dma_mem_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct cesa_dma_mem *cdm;

 if (error)
  return;

 KASSERT(nseg == 1, ("Got wrong number of DMA segments, should be 1."));
 cdm = arg;
 cdm->cdm_paddr = segs->ds_addr;
}
