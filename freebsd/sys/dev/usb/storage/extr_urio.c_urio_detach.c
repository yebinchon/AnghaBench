
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urio_softc {int sc_mtx; int sc_xfer; int sc_fifo; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int URIO_T_MAX ;
 struct urio_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
urio_detach(device_t dev)
{
 struct urio_softc *sc = device_get_softc(dev);

 DPRINTF("\n");

 usb_fifo_detach(&sc->sc_fifo);

 usbd_transfer_unsetup(sc->sc_xfer, URIO_T_MAX);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
