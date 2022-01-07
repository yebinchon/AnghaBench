
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ffec_softc {TYPE_1__* txbuf_map; int txbuf_tag; } ;
struct bus_dma_segment {int ds_len; int ds_addr; } ;
struct TYPE_2__ {struct mbuf* mbuf; int map; } ;


 int BUS_DMASYNC_PREWRITE ;
 int ENOMEM ;
 int M_NOWAIT ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,struct bus_dma_segment*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int ffec_setup_txdesc (struct ffec_softc*,int,int ,int ) ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;

__attribute__((used)) static int
ffec_setup_txbuf(struct ffec_softc *sc, int idx, struct mbuf **mp)
{
 struct mbuf * m;
 int error, nsegs;
 struct bus_dma_segment seg;

 if ((m = m_defrag(*mp, M_NOWAIT)) == ((void*)0))
  return (ENOMEM);
 *mp = m;

 error = bus_dmamap_load_mbuf_sg(sc->txbuf_tag, sc->txbuf_map[idx].map,
     m, &seg, &nsegs, 0);
 if (error != 0) {
  return (ENOMEM);
 }
 bus_dmamap_sync(sc->txbuf_tag, sc->txbuf_map[idx].map,
     BUS_DMASYNC_PREWRITE);

 sc->txbuf_map[idx].mbuf = m;
 ffec_setup_txdesc(sc, idx, seg.ds_addr, seg.ds_len);

 return (0);

}
