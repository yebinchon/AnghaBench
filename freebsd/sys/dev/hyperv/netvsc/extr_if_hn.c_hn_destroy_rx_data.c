
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_flags; int hn_rx_ring_cnt; scalar_t__ hn_rx_ring_inuse; struct hn_rx_ring* hn_rx_ring; int hn_dev; int * hn_rxbuf; int hn_rxbuf_dma; } ;
struct hn_rx_ring {int hn_rx_flags; struct hn_rx_ring* hn_pktbuf; int hn_lro; int * hn_br; int hn_br_dma; } ;


 int HN_FLAG_RXBUF_REF ;
 int HN_RX_FLAG_BR_REF ;
 int M_DEVBUF ;
 int device_printf (int ,char*,...) ;
 int free (struct hn_rx_ring*,int ) ;
 int hyperv_dmamem_free (int *,int *) ;
 int tcp_lro_free (int *) ;

__attribute__((used)) static void
hn_destroy_rx_data(struct hn_softc *sc)
{
 int i;

 if (sc->hn_rxbuf != ((void*)0)) {
  if ((sc->hn_flags & HN_FLAG_RXBUF_REF) == 0)
   hyperv_dmamem_free(&sc->hn_rxbuf_dma, sc->hn_rxbuf);
  else
   device_printf(sc->hn_dev, "RXBUF is referenced\n");
  sc->hn_rxbuf = ((void*)0);
 }

 if (sc->hn_rx_ring_cnt == 0)
  return;

 for (i = 0; i < sc->hn_rx_ring_cnt; ++i) {
  struct hn_rx_ring *rxr = &sc->hn_rx_ring[i];

  if (rxr->hn_br == ((void*)0))
   continue;
  if ((rxr->hn_rx_flags & HN_RX_FLAG_BR_REF) == 0) {
   hyperv_dmamem_free(&rxr->hn_br_dma, rxr->hn_br);
  } else {
   device_printf(sc->hn_dev,
       "%dth channel bufring is referenced", i);
  }
  rxr->hn_br = ((void*)0);




  free(rxr->hn_pktbuf, M_DEVBUF);
 }
 free(sc->hn_rx_ring, M_DEVBUF);
 sc->hn_rx_ring = ((void*)0);

 sc->hn_rx_ring_cnt = 0;
 sc->hn_rx_ring_inuse = 0;
}
