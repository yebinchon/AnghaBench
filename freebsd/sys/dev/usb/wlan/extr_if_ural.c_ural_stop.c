
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {int * sc_xfer; scalar_t__ sc_running; } ;


 int MA_OWNED ;
 int RAL_DISABLE_RX ;
 int RAL_LOCK (struct ural_softc*) ;
 int RAL_LOCK_ASSERT (struct ural_softc*,int ) ;
 int RAL_MAC_CSR1 ;
 int RAL_RESET_ASIC ;
 int RAL_RESET_BBP ;
 int RAL_TXRX_CSR2 ;
 int RAL_UNLOCK (struct ural_softc*) ;
 size_t URAL_BULK_RD ;
 size_t URAL_BULK_WR ;
 int hz ;
 int ural_pause (struct ural_softc*,int) ;
 int ural_unsetup_tx_list (struct ural_softc*) ;
 int ural_write (struct ural_softc*,int ,int) ;
 int usbd_transfer_drain (int ) ;

__attribute__((used)) static void
ural_stop(struct ural_softc *sc)
{

 RAL_LOCK_ASSERT(sc, MA_OWNED);

 sc->sc_running = 0;




 RAL_UNLOCK(sc);
 usbd_transfer_drain(sc->sc_xfer[URAL_BULK_WR]);
 usbd_transfer_drain(sc->sc_xfer[URAL_BULK_RD]);
 RAL_LOCK(sc);

 ural_unsetup_tx_list(sc);


 ural_write(sc, RAL_TXRX_CSR2, RAL_DISABLE_RX);

 ural_write(sc, RAL_MAC_CSR1, RAL_RESET_ASIC | RAL_RESET_BBP);

 ural_pause(sc, hz / 10);
 ural_write(sc, RAL_MAC_CSR1, 0);

 ural_pause(sc, hz / 10);
}
