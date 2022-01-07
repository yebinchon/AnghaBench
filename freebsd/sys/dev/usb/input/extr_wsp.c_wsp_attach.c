
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint16_t ;
struct TYPE_6__ {int rate; int * syncmask; int packetsize; int resolution; int protocol; } ;
struct TYPE_5__ {int buttons; int model; int type; int iftype; } ;
struct wsp_softc {scalar_t__ tp_datalen; int scr_mode; int sc_touch; TYPE_3__ sc_mode; TYPE_2__ sc_hw; int sc_fifo; int sc_mutex; int sc_usb_device; int sc_xfer; scalar_t__ sc_params; } ;
struct TYPE_4__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
typedef int device_t ;


 int DPRINTF (char*,scalar_t__) ;
 int DPRINTFN (int ,char*,struct wsp_softc*) ;
 int ENOMEM ;
 int ENXIO ;
 int GID_OPERATOR ;
 int MOUSE_IF_USB ;
 int MOUSE_MODEL_GENERIC ;
 int MOUSE_MSC_PACKETSIZE ;
 int MOUSE_MSC_SYNC ;
 int MOUSE_MSC_SYNCMASK ;
 int MOUSE_PAD ;
 int MOUSE_PROTO_MSC ;
 int MOUSE_RES_UNKNOWN ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int M_TEMP ;
 int UID_ROOT ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 scalar_t__ USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 scalar_t__ WSP_BUFFER_MAX ;
 int WSP_LLEVEL_INFO ;
 int WSP_N_TRANSFER ;
 int WSP_SCR_NONE ;
 int WSP_UNTOUCH ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct wsp_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_set_usb_desc (int ) ;
 int free (void*,int ) ;
 int hid_input ;
 scalar_t__ hid_report_size (void*,int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ usb_fifo_attach (int ,struct wsp_softc*,int *,int *,int *,int ,int,int ,int ,int ,int) ;
 scalar_t__ usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int ) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,int ,struct wsp_softc*,int *) ;
 int wsp_config ;
 int wsp_detach (int ) ;
 scalar_t__ wsp_dev_params ;
 int wsp_fifo_methods ;
 scalar_t__ wsp_set_device_mode (struct wsp_softc*,int) ;

__attribute__((used)) static int
wsp_attach(device_t dev)
{
 struct wsp_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 usb_error_t err;
 void *d_ptr = ((void*)0);
 uint16_t d_len;

 DPRINTFN(WSP_LLEVEL_INFO, "sc=%p\n", sc);


 err = usbd_req_get_hid_desc(uaa->device, ((void*)0), &d_ptr,
     &d_len, M_TEMP, uaa->info.bIfaceIndex);

 if (err == USB_ERR_NORMAL_COMPLETION) {

  sc->tp_datalen = hid_report_size(d_ptr, d_len, hid_input, ((void*)0));
  free(d_ptr, M_TEMP);

  if (sc->tp_datalen <= 0 || sc->tp_datalen > WSP_BUFFER_MAX) {
   DPRINTF("Invalid datalength or too big "
       "datalength: %d\n", sc->tp_datalen);
   return (ENXIO);
  }
 } else {
  return (ENXIO);
 }

 sc->sc_usb_device = uaa->device;


 sc->sc_params = wsp_dev_params + USB_GET_DRIVER_INFO(uaa);
 err = wsp_set_device_mode(sc, 0);
 if (err != USB_ERR_NORMAL_COMPLETION) {
  DPRINTF("Failed to set mode to HID MODE (%d)\n", err);
  return (ENXIO);
 }

 err = wsp_set_device_mode(sc, 1);
 if (err != USB_ERR_NORMAL_COMPLETION) {
  DPRINTF("failed to set mode to RAW MODE (%d)\n", err);
  return (ENXIO);
 }

 mtx_init(&sc->sc_mutex, "wspmtx", ((void*)0), MTX_DEF | MTX_RECURSE);

 err = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer, wsp_config,
     WSP_N_TRANSFER, sc, &sc->sc_mutex);
 if (err) {
  DPRINTF("error=%s\n", usbd_errstr(err));
  goto detach;
 }
 if (usb_fifo_attach(sc->sc_usb_device, sc, &sc->sc_mutex,
     &wsp_fifo_methods, &sc->sc_fifo,
     device_get_unit(dev), -1, uaa->info.bIfaceIndex,
     UID_ROOT, GID_OPERATOR, 0644)) {
  goto detach;
 }
 device_set_usb_desc(dev);

 sc->sc_hw.buttons = 3;
 sc->sc_hw.iftype = MOUSE_IF_USB;
 sc->sc_hw.type = MOUSE_PAD;
 sc->sc_hw.model = MOUSE_MODEL_GENERIC;
 sc->sc_mode.protocol = MOUSE_PROTO_MSC;
 sc->sc_mode.rate = -1;
 sc->sc_mode.resolution = MOUSE_RES_UNKNOWN;
 sc->sc_mode.packetsize = MOUSE_MSC_PACKETSIZE;
 sc->sc_mode.syncmask[0] = MOUSE_MSC_SYNCMASK;
 sc->sc_mode.syncmask[1] = MOUSE_MSC_SYNC;

 sc->sc_touch = WSP_UNTOUCH;
 sc->scr_mode = WSP_SCR_NONE;

 return (0);

detach:
 wsp_detach(dev);
 return (ENOMEM);
}
