
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_mtx; } ;
struct rtwn_usb_softc {int uc_xfer; struct rtwn_softc uc_sc; } ;
typedef int device_t ;


 int RTWN_N_TRANSFER ;
 struct rtwn_usb_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int rtwn_detach (struct rtwn_softc*) ;
 int rtwn_detach_private (struct rtwn_softc*) ;
 int rtwn_usb_free_rx_list (struct rtwn_softc*) ;
 int rtwn_usb_free_tx_list (struct rtwn_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
rtwn_usb_detach(device_t self)
{
 struct rtwn_usb_softc *uc = device_get_softc(self);
 struct rtwn_softc *sc = &uc->uc_sc;


 rtwn_detach(sc);


 rtwn_usb_free_tx_list(sc);
 rtwn_usb_free_rx_list(sc);


 usbd_transfer_unsetup(uc->uc_xfer, RTWN_N_TRANSFER);

 rtwn_detach_private(sc);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
