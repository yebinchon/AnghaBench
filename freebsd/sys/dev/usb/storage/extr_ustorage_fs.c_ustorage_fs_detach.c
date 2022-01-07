
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustorage_fs_softc {int sc_mtx; int sc_xfer; } ;
typedef int device_t ;


 int USTORAGE_FS_T_BBB_MAX ;
 struct ustorage_fs_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
ustorage_fs_detach(device_t dev)
{
 struct ustorage_fs_softc *sc = device_get_softc(dev);



 usbd_transfer_unsetup(sc->sc_xfer, USTORAGE_FS_T_BBB_MAX);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
