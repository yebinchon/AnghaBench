
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int sc_xfer; } ;


 int OTUS_LOCK (struct otus_softc*) ;
 int OTUS_N_XFER ;
 int OTUS_UNLOCK (struct otus_softc*) ;
 int otus_free_rx_list (struct otus_softc*) ;
 int otus_free_tx_cmd_list (struct otus_softc*) ;
 int otus_free_tx_list (struct otus_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

void
otus_close_pipes(struct otus_softc *sc)
{

 OTUS_LOCK(sc);
 otus_free_tx_cmd_list(sc);
 otus_free_tx_list(sc);
 otus_free_rx_list(sc);
 OTUS_UNLOCK(sc);

 usbd_transfer_unsetup(sc->sc_xfer, OTUS_N_XFER);
}
