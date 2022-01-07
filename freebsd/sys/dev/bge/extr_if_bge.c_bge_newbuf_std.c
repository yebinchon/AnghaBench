
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; scalar_t__ m_len; } ;
struct TYPE_10__ {int * bge_rx_std_dmamap; int bge_rx_mtag; int * bge_rx_std_seglen; struct mbuf** bge_rx_std_chain; int bge_rx_std_sparemap; } ;
struct TYPE_8__ {struct bge_rx_bd* bge_rx_std_ring; } ;
struct bge_softc {int bge_flags; size_t bge_std; TYPE_4__ bge_cdata; TYPE_2__ bge_ldata; int bge_ifp; } ;
struct TYPE_9__ {int bge_addr_hi; int bge_addr_lo; } ;
struct bge_rx_bd {int bge_idx; int bge_len; int bge_flags; TYPE_3__ bge_addr; } ;
typedef int bus_dmamap_t ;
struct TYPE_11__ {int ds_len; int ds_addr; } ;
typedef TYPE_5__ bus_dma_segment_t ;


 int BGE_ADDR_HI (int ) ;
 int BGE_ADDR_LO (int ) ;
 int BGE_FLAG_JUMBO_STD ;
 int BGE_FLAG_RX_ALIGNBUG ;
 int BGE_RXBDFLAG_END ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int ENOBUFS ;
 scalar_t__ ETHER_ALIGN ;
 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 scalar_t__ MCLBYTES ;
 scalar_t__ MJUM9BYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_5__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 scalar_t__ if_getmtu (int ) ;
 int m_adj (struct mbuf*,scalar_t__) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 struct mbuf* m_getjcl (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static int
bge_newbuf_std(struct bge_softc *sc, int i)
{
 struct mbuf *m;
 struct bge_rx_bd *r;
 bus_dma_segment_t segs[1];
 bus_dmamap_t map;
 int error, nsegs;

 if (sc->bge_flags & BGE_FLAG_JUMBO_STD &&
     (if_getmtu(sc->bge_ifp) + ETHER_HDR_LEN + ETHER_CRC_LEN +
     ETHER_VLAN_ENCAP_LEN > (MCLBYTES - ETHER_ALIGN))) {
  m = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, MJUM9BYTES);
  if (m == ((void*)0))
   return (ENOBUFS);
  m->m_len = m->m_pkthdr.len = MJUM9BYTES;
 } else {
  m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
  if (m == ((void*)0))
   return (ENOBUFS);
  m->m_len = m->m_pkthdr.len = MCLBYTES;
 }
 if ((sc->bge_flags & BGE_FLAG_RX_ALIGNBUG) == 0)
  m_adj(m, ETHER_ALIGN);

 error = bus_dmamap_load_mbuf_sg(sc->bge_cdata.bge_rx_mtag,
     sc->bge_cdata.bge_rx_std_sparemap, m, segs, &nsegs, 0);
 if (error != 0) {
  m_freem(m);
  return (error);
 }
 if (sc->bge_cdata.bge_rx_std_chain[i] != ((void*)0)) {
  bus_dmamap_sync(sc->bge_cdata.bge_rx_mtag,
      sc->bge_cdata.bge_rx_std_dmamap[i], BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(sc->bge_cdata.bge_rx_mtag,
      sc->bge_cdata.bge_rx_std_dmamap[i]);
 }
 map = sc->bge_cdata.bge_rx_std_dmamap[i];
 sc->bge_cdata.bge_rx_std_dmamap[i] = sc->bge_cdata.bge_rx_std_sparemap;
 sc->bge_cdata.bge_rx_std_sparemap = map;
 sc->bge_cdata.bge_rx_std_chain[i] = m;
 sc->bge_cdata.bge_rx_std_seglen[i] = segs[0].ds_len;
 r = &sc->bge_ldata.bge_rx_std_ring[sc->bge_std];
 r->bge_addr.bge_addr_lo = BGE_ADDR_LO(segs[0].ds_addr);
 r->bge_addr.bge_addr_hi = BGE_ADDR_HI(segs[0].ds_addr);
 r->bge_flags = BGE_RXBDFLAG_END;
 r->bge_len = segs[0].ds_len;
 r->bge_idx = i;

 bus_dmamap_sync(sc->bge_cdata.bge_rx_mtag,
     sc->bge_cdata.bge_rx_std_dmamap[i], BUS_DMASYNC_PREREAD);

 return (0);
}
