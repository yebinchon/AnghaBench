
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct kue_softc {int sc_mcfilters; int sc_mtx; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int KUE_N_TRANSFER ;
 int M_USBDEV ;
 struct kue_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int mtx_destroy (int *) ;
 int uether_ifdetach (struct usb_ether*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
kue_detach(device_t dev)
{
 struct kue_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;

 usbd_transfer_unsetup(sc->sc_xfer, KUE_N_TRANSFER);
 uether_ifdetach(ue);
 mtx_destroy(&sc->sc_mtx);
 free(sc->sc_mcfilters, M_USBDEV);

 return (0);
}
