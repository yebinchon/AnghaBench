
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct g_modem_softc {int sc_mtx; int sc_xfer; int sc_mode; int sc_watchdog; int sc_callout; } ;
typedef int device_t ;


 int DPRINTF (char*,int ) ;
 int DPRINTFN (int,char*) ;
 int ENXIO ;
 int G_MODEM_MODE_SILENT ;
 int G_MODEM_N_TRANSFER ;
 int MTX_DEF ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct g_modem_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int g_modem_config ;
 int g_modem_detach (int ) ;
 int g_modem_timeout_reset (struct g_modem_softc*) ;
 int g_modem_watchdog_reset (struct g_modem_softc*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usbd_errstr (int) ;
 int usbd_set_parent_iface (int ,scalar_t__,scalar_t__) ;
 int usbd_transfer_setup (int ,scalar_t__*,int ,int ,int ,struct g_modem_softc*,int *) ;

__attribute__((used)) static int
g_modem_attach(device_t dev)
{
 struct g_modem_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 int error;
 uint8_t iface_index[2];

 DPRINTFN(11, "\n");

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "g_modem", ((void*)0), MTX_DEF);

 usb_callout_init_mtx(&sc->sc_callout, &sc->sc_mtx, 0);
 usb_callout_init_mtx(&sc->sc_watchdog, &sc->sc_mtx, 0);

 sc->sc_mode = G_MODEM_MODE_SILENT;

 iface_index[0] = uaa->info.bIfaceIndex;
 iface_index[1] = uaa->info.bIfaceIndex + 1;

 error = usbd_transfer_setup(uaa->device,
     iface_index, sc->sc_xfer, g_modem_config,
     G_MODEM_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  DPRINTF("error=%s\n", usbd_errstr(error));
  goto detach;
 }
 usbd_set_parent_iface(uaa->device, iface_index[1], iface_index[0]);

 mtx_lock(&sc->sc_mtx);
 g_modem_timeout_reset(sc);
 g_modem_watchdog_reset(sc);
 mtx_unlock(&sc->sc_mtx);

 return (0);

detach:
 g_modem_detach(dev);

 return (ENXIO);
}
