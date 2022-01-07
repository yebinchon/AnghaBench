
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arge_txdesc {int * tx_m; scalar_t__ tx_dmamap; } ;
struct TYPE_2__ {int arge_tx_tag; struct arge_txdesc* arge_txdesc; } ;
struct arge_softc {TYPE_1__ arge_cdata; } ;


 int ARGE_TX_RING_COUNT ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,scalar_t__,int ) ;
 int bus_dmamap_unload (int ,scalar_t__) ;
 int m_freem (int *) ;

__attribute__((used)) static void
arge_tx_ring_free(struct arge_softc *sc)
{
 struct arge_txdesc *txd;
 int i;


 for (i = 0; i < ARGE_TX_RING_COUNT; i++) {
  txd = &sc->arge_cdata.arge_txdesc[i];
  if (txd->tx_dmamap) {
   bus_dmamap_sync(sc->arge_cdata.arge_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->arge_cdata.arge_tx_tag,
       txd->tx_dmamap);
  }
  if (txd->tx_m)
   m_freem(txd->tx_m);
  txd->tx_m = ((void*)0);
 }
}
