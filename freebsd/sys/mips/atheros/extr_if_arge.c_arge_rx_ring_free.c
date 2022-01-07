
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arge_rx_tag; struct arge_rxdesc* arge_rxdesc; } ;
struct arge_softc {TYPE_1__ arge_cdata; } ;
struct arge_rxdesc {int * rx_m; int rx_dmamap; } ;


 int ARGE_LOCK_ASSERT (struct arge_softc*) ;
 int ARGE_RX_RING_COUNT ;
 int bus_dmamap_unload (int ,int ) ;
 int m_free (int *) ;

__attribute__((used)) static void
arge_rx_ring_free(struct arge_softc *sc)
{
 int i;
 struct arge_rxdesc *rxd;

 ARGE_LOCK_ASSERT(sc);

 for (i = 0; i < ARGE_RX_RING_COUNT; i++) {
  rxd = &sc->arge_cdata.arge_rxdesc[i];

  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_unload(sc->arge_cdata.arge_rx_tag,
       rxd->rx_dmamap);
   m_free(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
 }
}
