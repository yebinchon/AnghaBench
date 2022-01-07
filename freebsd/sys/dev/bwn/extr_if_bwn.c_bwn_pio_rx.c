
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int sc_dev; } ;
struct bwn_pio_rxqueue {struct bwn_mac* prq_mac; } ;
struct bwn_mac {scalar_t__ mac_status; struct bwn_softc* mac_sc; } ;


 int BWN_ASSERT_LOCKED (struct bwn_softc*) ;
 scalar_t__ BWN_MAC_STATUS_STARTED ;
 scalar_t__ bwn_pio_rxeof (struct bwn_pio_rxqueue*) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bwn_pio_rx(struct bwn_pio_rxqueue *prq)
{
 struct bwn_mac *mac = prq->prq_mac;
 struct bwn_softc *sc = mac->mac_sc;
 unsigned int i;

 BWN_ASSERT_LOCKED(sc);

 if (mac->mac_status < BWN_MAC_STATUS_STARTED)
  return (0);

 for (i = 0; i < 5000; i++) {
  if (bwn_pio_rxeof(prq) == 0)
   break;
 }
 if (i >= 5000)
  device_printf(sc->sc_dev, "too many RX frames in PIO mode\n");
 return ((i > 0) ? 1 : 0);
}
