
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ums_softc {int sc_mtx; int sc_callout; int sc_xfer; int sc_evdev; int sc_fifo; } ;
typedef int device_t ;


 int DPRINTF (char*,struct ums_softc*) ;
 int UMS_N_TRANSFER ;
 struct ums_softc* device_get_softc (int ) ;
 int evdev_free (int ) ;
 int mtx_destroy (int *) ;
 int usb_callout_drain (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
ums_detach(device_t self)
{
 struct ums_softc *sc = device_get_softc(self);

 DPRINTF("sc=%p\n", sc);

 usb_fifo_detach(&sc->sc_fifo);





 usbd_transfer_unsetup(sc->sc_xfer, UMS_N_TRANSFER);

 usb_callout_drain(&sc->sc_callout);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
