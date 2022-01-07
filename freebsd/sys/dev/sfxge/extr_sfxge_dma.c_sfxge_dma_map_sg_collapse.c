
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 int EFBIG ;
 int ENOBUFS ;
 int KASSERT (int ,char*) ;
 int M_NOWAIT ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,int *,int*,int ) ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;
 int sfxge_map_mbuf_fast (int ,int ,struct mbuf*,int *) ;

int
sfxge_dma_map_sg_collapse(bus_dma_tag_t tag, bus_dmamap_t map,
     struct mbuf **mp, bus_dma_segment_t *segs,
     int *nsegs, int maxsegs)
{
 bus_dma_segment_t *psegs;
 struct mbuf *m;
 int seg_count;
 int defragged;
 int err;

 m = *mp;
 defragged = err = seg_count = 0;

 KASSERT(m->m_pkthdr.len, ("packet has zero header length"));

retry:
 psegs = segs;
 seg_count = 0;
 if (m->m_next == ((void*)0)) {
  sfxge_map_mbuf_fast(tag, map, m, segs);
  *nsegs = 1;
  return (0);
 }

 while (m != ((void*)0) && seg_count < maxsegs) {



  if (m->m_len != 0) {
   seg_count++;
   sfxge_map_mbuf_fast(tag, map, m, psegs);
   psegs++;
  }
  m = m->m_next;
 }



 if (seg_count == 0) {
  err = EFBIG;
  goto err_out;
 } else if (err == EFBIG || seg_count >= maxsegs) {
  if (!defragged) {
   m = m_defrag(*mp, M_NOWAIT);
   if (m == ((void*)0)) {
    err = ENOBUFS;
    goto err_out;
   }
   *mp = m;
   defragged = 1;
   goto retry;
  }
  err = EFBIG;
  goto err_out;
 }
 *nsegs = seg_count;

err_out:
 return (err);
}
