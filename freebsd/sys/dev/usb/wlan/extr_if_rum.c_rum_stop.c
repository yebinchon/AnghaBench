
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {int * sc_xfer; scalar_t__ sc_running; } ;


 int RT2573_DISABLE_RX ;
 int RT2573_MAC_CSR1 ;
 int RT2573_RESET_ASIC ;
 int RT2573_RESET_BBP ;
 int RT2573_TXRX_CSR0 ;
 size_t RUM_BULK_RD ;
 size_t RUM_BULK_WR ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 int rum_setbits (struct rum_softc*,int ,int ) ;
 int rum_unsetup_tx_list (struct rum_softc*) ;
 int rum_write (struct rum_softc*,int ,int) ;
 int usbd_transfer_drain (int ) ;

__attribute__((used)) static void
rum_stop(struct rum_softc *sc)
{

 RUM_LOCK(sc);
 if (!sc->sc_running) {
  RUM_UNLOCK(sc);
  return;
 }
 sc->sc_running = 0;
 RUM_UNLOCK(sc);




 usbd_transfer_drain(sc->sc_xfer[RUM_BULK_WR]);
 usbd_transfer_drain(sc->sc_xfer[RUM_BULK_RD]);

 RUM_LOCK(sc);
 rum_unsetup_tx_list(sc);


 rum_setbits(sc, RT2573_TXRX_CSR0, RT2573_DISABLE_RX);


 rum_write(sc, RT2573_MAC_CSR1, RT2573_RESET_ASIC | RT2573_RESET_BBP);
 rum_write(sc, RT2573_MAC_CSR1, 0);
 RUM_UNLOCK(sc);
}
