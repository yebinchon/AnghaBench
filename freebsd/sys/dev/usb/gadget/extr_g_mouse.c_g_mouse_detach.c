
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mouse_softc {int sc_mtx; int sc_cursor_update_callout; int sc_button_press_callout; int sc_xfer; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int G_MOUSE_N_TRANSFER ;
 struct g_mouse_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_drain (int *) ;
 int usb_callout_stop (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
g_mouse_detach(device_t dev)
{
 struct g_mouse_softc *sc = device_get_softc(dev);

 DPRINTF("\n");

 mtx_lock(&sc->sc_mtx);
 usb_callout_stop(&sc->sc_button_press_callout);
 usb_callout_stop(&sc->sc_cursor_update_callout);
 mtx_unlock(&sc->sc_mtx);

 usbd_transfer_unsetup(sc->sc_xfer, G_MOUSE_N_TRANSFER);

 usb_callout_drain(&sc->sc_button_press_callout);
 usb_callout_drain(&sc->sc_cursor_update_callout);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
