
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustorage_fs_softc {size_t sc_last_xfer_index; int sc_mtx; int * sc_xfer; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_drain (int ) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
ustorage_fs_transfer_stop(struct ustorage_fs_softc *sc)
{
 usbd_transfer_stop(sc->sc_xfer[sc->sc_last_xfer_index]);
 mtx_unlock(&sc->sc_mtx);
 usbd_transfer_drain(sc->sc_xfer[sc->sc_last_xfer_index]);
 mtx_lock(&sc->sc_mtx);
}
