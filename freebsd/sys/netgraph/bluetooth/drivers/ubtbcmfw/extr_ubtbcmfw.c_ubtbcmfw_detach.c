
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubtbcmfw_softc {int sc_mtx; int sc_xfer; int sc_fifo; } ;
typedef int device_t ;


 int UBTBCMFW_N_TRANSFER ;
 struct ubtbcmfw_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
ubtbcmfw_detach(device_t dev)
{
 struct ubtbcmfw_softc *sc = device_get_softc(dev);

 usb_fifo_detach(&sc->sc_fifo);

 usbd_transfer_unsetup(sc->sc_xfer, UBTBCMFW_N_TRANSFER);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
