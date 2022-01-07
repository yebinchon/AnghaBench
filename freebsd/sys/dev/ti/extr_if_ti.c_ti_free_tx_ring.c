
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_4__ {int ti_tx_ring_map; int ti_tx_ring_tag; int ti_tx_tag; struct ti_txdesc* ti_txdesc; } ;
struct TYPE_3__ {int * ti_tx_ring; } ;
struct ti_softc {TYPE_2__ ti_cdata; TYPE_1__ ti_rdata; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int TI_TX_RING_CNT ;
 int TI_TX_RING_SZ ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (int *,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
ti_free_tx_ring(struct ti_softc *sc)
{
 struct ti_txdesc *txd;
 int i;

 if (sc->ti_rdata.ti_tx_ring == ((void*)0))
  return;

 for (i = 0; i < TI_TX_RING_CNT; i++) {
  txd = &sc->ti_cdata.ti_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->ti_cdata.ti_tx_tag, txd->tx_dmamap,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->ti_cdata.ti_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
 }
 bzero(sc->ti_rdata.ti_tx_ring, TI_TX_RING_SZ);
 bus_dmamap_sync(sc->ti_cdata.ti_tx_ring_tag,
     sc->ti_cdata.ti_tx_ring_map, BUS_DMASYNC_PREWRITE);
}
