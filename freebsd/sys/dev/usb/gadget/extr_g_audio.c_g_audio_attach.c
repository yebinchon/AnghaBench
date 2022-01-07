
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct g_audio_softc {int sc_noise_rem; int** sc_data_len; int sc_mtx; int * sc_xfer; int sc_mode; int sc_watchdog; int sc_callout; } ;
typedef int device_t ;


 int DPRINTF (char*,int ) ;
 int DPRINTFN (int,char*) ;
 int ENXIO ;
 int G_AUDIO_BUFSIZE ;
 int G_AUDIO_FRAMES ;
 size_t G_AUDIO_ISOC0_RD ;
 size_t G_AUDIO_ISOC0_WR ;
 size_t G_AUDIO_ISOC1_RD ;
 size_t G_AUDIO_ISOC1_WR ;
 int G_AUDIO_MODE_SILENT ;
 int G_AUDIO_N_TRANSFER ;
 int MTX_DEF ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct g_audio_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int g_audio_config ;
 int g_audio_detach (int ) ;
 int g_audio_timeout_reset (struct g_audio_softc*) ;
 int g_audio_watchdog_reset (struct g_audio_softc*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usbd_errstr (int) ;
 int usbd_set_alt_interface_index (int ,scalar_t__,int) ;
 int usbd_set_parent_iface (int ,scalar_t__,scalar_t__) ;
 int usbd_transfer_setup (int ,scalar_t__*,int *,int ,int ,struct g_audio_softc*,int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
g_audio_attach(device_t dev)
{
 struct g_audio_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 int error;
 int i;
 uint8_t iface_index[3];

 DPRINTFN(11, "\n");

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "g_audio", ((void*)0), MTX_DEF);

 usb_callout_init_mtx(&sc->sc_callout, &sc->sc_mtx, 0);
 usb_callout_init_mtx(&sc->sc_watchdog, &sc->sc_mtx, 0);

 sc->sc_mode = G_AUDIO_MODE_SILENT;

 sc->sc_noise_rem = 1;

 for (i = 0; i != G_AUDIO_FRAMES; i++) {
  sc->sc_data_len[0][i] = G_AUDIO_BUFSIZE / G_AUDIO_FRAMES;
  sc->sc_data_len[1][i] = G_AUDIO_BUFSIZE / G_AUDIO_FRAMES;
 }

 iface_index[0] = uaa->info.bIfaceIndex;
 iface_index[1] = uaa->info.bIfaceIndex + 1;
 iface_index[2] = uaa->info.bIfaceIndex + 2;

 error = usbd_set_alt_interface_index(uaa->device, iface_index[1], 1);
 if (error) {
  DPRINTF("alt iface setting error=%s\n", usbd_errstr(error));
  goto detach;
 }
 error = usbd_set_alt_interface_index(uaa->device, iface_index[2], 1);
 if (error) {
  DPRINTF("alt iface setting error=%s\n", usbd_errstr(error));
  goto detach;
 }
 error = usbd_transfer_setup(uaa->device,
     iface_index, sc->sc_xfer, g_audio_config,
     G_AUDIO_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  DPRINTF("error=%s\n", usbd_errstr(error));
  goto detach;
 }
 usbd_set_parent_iface(uaa->device, iface_index[1], iface_index[0]);
 usbd_set_parent_iface(uaa->device, iface_index[2], iface_index[0]);

 mtx_lock(&sc->sc_mtx);

 usbd_transfer_start(sc->sc_xfer[G_AUDIO_ISOC0_RD]);
 usbd_transfer_start(sc->sc_xfer[G_AUDIO_ISOC1_RD]);

 usbd_transfer_start(sc->sc_xfer[G_AUDIO_ISOC0_WR]);
 usbd_transfer_start(sc->sc_xfer[G_AUDIO_ISOC1_WR]);

 g_audio_timeout_reset(sc);

 g_audio_watchdog_reset(sc);

 mtx_unlock(&sc->sc_mtx);

 return (0);

detach:
 g_audio_detach(dev);

 return (ENXIO);
}
