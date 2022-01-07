
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 int BUS_DMA_NOWAIT ;
 int _bus_dmamap_complete (int ,int ,int *,int,int) ;
 int _bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,int *,int*,int) ;

int
bus_dmamap_load_mbuf_sg(bus_dma_tag_t dmat, bus_dmamap_t map, struct mbuf *m0,
    bus_dma_segment_t *segs, int *nsegs, int flags)
{
 int error;

 flags |= BUS_DMA_NOWAIT;
 *nsegs = -1;
 error = _bus_dmamap_load_mbuf_sg(dmat, map, m0, segs, nsegs, flags);
 ++*nsegs;
 _bus_dmamap_complete(dmat, map, segs, *nsegs, error);
 return (error);
}
