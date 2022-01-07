
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct ustorage_fs_softc {size_t sc_last_xfer_index; scalar_t__* sc_xfer; } ;


 int usbd_transfer_start (scalar_t__) ;

__attribute__((used)) static void
ustorage_fs_transfer_start(struct ustorage_fs_softc *sc, uint8_t xfer_index)
{
 if (sc->sc_xfer[xfer_index]) {
  sc->sc_last_xfer_index = xfer_index;
  usbd_transfer_start(sc->sc_xfer[xfer_index]);
 }
}
