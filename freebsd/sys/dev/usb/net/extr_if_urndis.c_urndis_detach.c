
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct urndis_softc {int sc_mtx; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int URNDIS_LOCK (struct urndis_softc*) ;
 int URNDIS_N_TRANSFER ;
 int URNDIS_UNLOCK (struct urndis_softc*) ;
 struct urndis_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int uether_ifdetach (struct usb_ether*) ;
 int urndis_ctrl_halt (struct urndis_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
urndis_detach(device_t dev)
{
 struct urndis_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;


 usbd_transfer_unsetup(sc->sc_xfer, URNDIS_N_TRANSFER);

 uether_ifdetach(ue);

 URNDIS_LOCK(sc);
 (void)urndis_ctrl_halt(sc);
 URNDIS_UNLOCK(sc);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
