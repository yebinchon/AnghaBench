
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_keyboard_softc {int sc_mtx; int sc_callout; int sc_xfer; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int G_KEYBOARD_N_TRANSFER ;
 struct g_keyboard_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_drain (int *) ;
 int usb_callout_stop (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
g_keyboard_detach(device_t dev)
{
 struct g_keyboard_softc *sc = device_get_softc(dev);

 DPRINTF("\n");

 mtx_lock(&sc->sc_mtx);
 usb_callout_stop(&sc->sc_callout);
 mtx_unlock(&sc->sc_mtx);

 usbd_transfer_unsetup(sc->sc_xfer, G_KEYBOARD_N_TRANSFER);

 usb_callout_drain(&sc->sc_callout);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
