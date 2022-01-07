
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct g_mouse_softc {int sc_mtx; int sc_xfer; int sc_mode; int sc_cursor_update_callout; int sc_button_press_callout; } ;
typedef int device_t ;


 int DPRINTF (char*,int ) ;
 int DPRINTFN (int,char*) ;
 int ENXIO ;
 int G_MOUSE_MODE_SILENT ;
 int G_MOUSE_N_TRANSFER ;
 int MTX_DEF ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct g_mouse_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int g_mouse_button_press_timeout_reset (struct g_mouse_softc*) ;
 int g_mouse_config ;
 int g_mouse_cursor_update_timeout_reset (struct g_mouse_softc*) ;
 int g_mouse_detach (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct g_mouse_softc*,int *) ;

__attribute__((used)) static int
g_mouse_attach(device_t dev)
{
 struct g_mouse_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 int error;

 DPRINTFN(11, "\n");

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "g_mouse", ((void*)0), MTX_DEF);

 usb_callout_init_mtx(&sc->sc_button_press_callout, &sc->sc_mtx, 0);
 usb_callout_init_mtx(&sc->sc_cursor_update_callout, &sc->sc_mtx, 0);

 sc->sc_mode = G_MOUSE_MODE_SILENT;

 error = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer, g_mouse_config,
     G_MOUSE_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  DPRINTF("error=%s\n", usbd_errstr(error));
  goto detach;
 }

 mtx_lock(&sc->sc_mtx);
 g_mouse_button_press_timeout_reset(sc);
 g_mouse_cursor_update_timeout_reset(sc);
 mtx_unlock(&sc->sc_mtx);

 return (0);

detach:
 g_mouse_detach(dev);

 return (ENXIO);
}
