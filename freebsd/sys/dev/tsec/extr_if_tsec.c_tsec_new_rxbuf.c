
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int ext_size; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_2__ m_ext; TYPE_1__ m_pkthdr; int m_len; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_7__ {int ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int MCLBYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int TSEC_RXBUFFER_ALIGNMENT ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_3__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getjcl (int ,int ,int ,int ) ;
 int panic (char*,int,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
tsec_new_rxbuf(bus_dma_tag_t tag, bus_dmamap_t map, struct mbuf **mbufp,
    uint32_t *paddr)
{
 struct mbuf *new_mbuf;
 bus_dma_segment_t seg[1];
 int error, nsegs;

 KASSERT(mbufp != ((void*)0), ("NULL mbuf pointer!"));

 new_mbuf = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, MCLBYTES);
 if (new_mbuf == ((void*)0))
  return (ENOBUFS);
 new_mbuf->m_len = new_mbuf->m_pkthdr.len = new_mbuf->m_ext.ext_size;

 if (*mbufp) {
  bus_dmamap_sync(tag, map, BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(tag, map);
 }

 error = bus_dmamap_load_mbuf_sg(tag, map, new_mbuf, seg, &nsegs,
     BUS_DMA_NOWAIT);
 KASSERT(nsegs == 1, ("Too many segments returned!"));
 if (nsegs != 1 || error)
  panic("tsec_new_rxbuf(): nsegs(%d), error(%d)", nsegs, error);
 bus_dmamap_sync(tag, map, BUS_DMASYNC_PREREAD);

 (*mbufp) = new_mbuf;
 (*paddr) = seg->ds_addr;
 return (0);
}
