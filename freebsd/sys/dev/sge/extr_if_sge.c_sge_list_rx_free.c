
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_chain_data {int sge_rxmbuf_tag; struct sge_rxdesc* sge_rxdesc; } ;
struct sge_softc {struct sge_chain_data sge_cdata; } ;
struct sge_rxdesc {int * rx_m; int rx_dmamap; } ;


 int BUS_DMASYNC_POSTREAD ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 int SGE_RX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static int
sge_list_rx_free(struct sge_softc *sc)
{
 struct sge_chain_data *cd;
 struct sge_rxdesc *rxd;
 int i;

 SGE_LOCK_ASSERT(sc);
 cd = &sc->sge_cdata;
 for (i = 0; i < SGE_RX_RING_CNT; i++) {
  rxd = &cd->sge_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(cd->sge_rxmbuf_tag, rxd->rx_dmamap,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(cd->sge_rxmbuf_tag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
 }
 return (0);
}
