
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uep_softc {int mtx; int xfer; int fifo; int evdev; } ;
typedef int device_t ;


 int UEP_N_TRANSFER ;
 struct uep_softc* device_get_softc (int ) ;
 int evdev_free (int ) ;
 int mtx_destroy (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
uep_detach(device_t dev)
{
 struct uep_softc *sc = device_get_softc(dev);




 usb_fifo_detach(&sc->fifo);


 usbd_transfer_unsetup(sc->xfer, UEP_N_TRANSFER);

 mtx_destroy(&sc->mtx);

 return (0);
}
