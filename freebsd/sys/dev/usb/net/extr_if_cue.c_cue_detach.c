
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct cue_softc {int sc_mtx; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int CUE_N_TRANSFER ;
 struct cue_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int uether_ifdetach (struct usb_ether*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
cue_detach(device_t dev)
{
 struct cue_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;

 usbd_transfer_unsetup(sc->sc_xfer, CUE_N_TRANSFER);
 uether_ifdetach(ue);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
