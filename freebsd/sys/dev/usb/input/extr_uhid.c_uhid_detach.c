
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_softc {int sc_flags; int sc_mtx; scalar_t__ sc_repdesc_ptr; int sc_xfer; int sc_fifo; } ;
typedef int device_t ;


 int M_USBDEV ;
 int UHID_FLAG_STATIC_DESC ;
 int UHID_N_TRANSFER ;
 struct uhid_softc* device_get_softc (int ) ;
 int free (scalar_t__,int ) ;
 int mtx_destroy (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
uhid_detach(device_t dev)
{
 struct uhid_softc *sc = device_get_softc(dev);

 usb_fifo_detach(&sc->sc_fifo);

 usbd_transfer_unsetup(sc->sc_xfer, UHID_N_TRANSFER);

 if (sc->sc_repdesc_ptr) {
  if (!(sc->sc_flags & UHID_FLAG_STATIC_DESC)) {
   free(sc->sc_repdesc_ptr, M_USBDEV);
  }
 }
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
