
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ffec_softc {int fecflags; TYPE_1__* rxbuf_map; int rxbuf_tag; int rxbuf_align; } ;
struct bus_dma_segment {int ds_addr; } ;
struct TYPE_2__ {struct mbuf* mbuf; int map; } ;


 int BUS_DMASYNC_PREREAD ;
 int ETHER_ALIGN ;
 int FECFLAG_RACC ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,struct bus_dma_segment*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int ffec_setup_rxdesc (struct ffec_softc*,int,int ) ;
 int m_adj (struct mbuf*,int ) ;
 int roundup (int ,int ) ;

__attribute__((used)) static int
ffec_setup_rxbuf(struct ffec_softc *sc, int idx, struct mbuf * m)
{
 int error, nsegs;
 struct bus_dma_segment seg;

 if (!(sc->fecflags & FECFLAG_RACC)) {
  m_adj(m, roundup(ETHER_ALIGN, sc->rxbuf_align));
 }

 error = bus_dmamap_load_mbuf_sg(sc->rxbuf_tag, sc->rxbuf_map[idx].map,
     m, &seg, &nsegs, 0);
 if (error != 0) {
  return (error);
 }

 bus_dmamap_sync(sc->rxbuf_tag, sc->rxbuf_map[idx].map,
     BUS_DMASYNC_PREREAD);

 sc->rxbuf_map[idx].mbuf = m;
 ffec_setup_rxdesc(sc, idx, seg.ds_addr);

 return (0);
}
