
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_softc {int mtx; int xfer; int evdev; } ;
typedef int device_t ;


 int WMT_N_TRANSFER ;
 struct wmt_softc* device_get_softc (int ) ;
 int evdev_free (int ) ;
 int mtx_destroy (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
wmt_detach(device_t dev)
{
 struct wmt_softc *sc = device_get_softc(dev);

 evdev_free(sc->evdev);
 usbd_transfer_unsetup(sc->xfer, WMT_N_TRANSFER);
 mtx_destroy(&sc->mtx);
 return (0);
}
