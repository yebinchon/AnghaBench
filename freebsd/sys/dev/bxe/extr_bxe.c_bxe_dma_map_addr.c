
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bxe_dma {int nseg; scalar_t__ paddr; int msg; int sc; } ;
struct TYPE_3__ {scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int BLOGE (int ,char*,int ,int) ;

__attribute__((used)) static void
bxe_dma_map_addr(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
    struct bxe_dma *dma = arg;

    if (error) {
        dma->paddr = 0;
        dma->nseg = 0;
        BLOGE(dma->sc, "Failed DMA alloc '%s' (%d)!\n", dma->msg, error);
    } else {
        dma->paddr = segs->ds_addr;
        dma->nseg = nseg;
    }
}
