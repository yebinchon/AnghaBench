
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 int busdma_map_mbuf_fast (int ,int ,struct mbuf*,int *) ;

void
busdma_map_sg_vec(bus_dma_tag_t tag, bus_dmamap_t map,
    struct mbuf *m, bus_dma_segment_t *segs, int *nsegs)
{

 for (*nsegs = 0; m != ((void*)0) ; segs++, *nsegs += 1, m = m->m_nextpkt)
  busdma_map_mbuf_fast(tag, map, m, segs);
}
