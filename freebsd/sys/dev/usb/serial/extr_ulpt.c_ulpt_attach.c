
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_interface_descriptor {scalar_t__ bDescriptorType; int bLength; scalar_t__ bInterfaceNumber; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; int bAlternateSetting; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_config_descriptor {int bConfigurationValue; } ;
struct TYPE_2__ {int bIfaceIndex; scalar_t__ bIfaceNum; } ;
struct usb_attach_arg {TYPE_1__ info; int device; int iface; } ;
struct ulpt_softc {scalar_t__ sc_iface_no; int sc_mtx; int sc_fifo_noreset; int sc_fifo; int sc_dev; int sc_xfer; int sc_watchdog; int sc_udev; } ;
typedef int device_t ;


 int DPRINTF (char*,int) ;
 int DPRINTFN (int,char*,struct ulpt_softc*) ;
 int ENOMEM ;
 int GID_OPERATOR ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 scalar_t__ UDESC_INTERFACE ;
 scalar_t__ UICLASS_PRINTER ;
 int UID_ROOT ;
 scalar_t__ UIPROTO_PRINTER_BI ;
 scalar_t__ UISUBCLASS_PRINTER ;
 int ULPT_N_TRANSFER ;
 int UR_GET_DEVICE_ID ;
 int USB_DEFAULT_TIMEOUT ;
 int USB_SHORT_XFER_OK ;
 int USETW (int ,int) ;
 int USETW2 (int ,scalar_t__,int ) ;
 int UT_READ_CLASS_INTERFACE ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 char* device_get_nameunit (int ) ;
 struct ulpt_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int* devinfo ;
 int ieee1284_print_id (int*) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int ulpt_config ;
 int ulpt_detach (int ) ;
 int ulpt_fifo_methods ;
 int ulpt_watchdog (struct ulpt_softc*) ;
 int unlpt_fifo_methods ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 scalar_t__ usb_desc_foreach (struct usb_config_descriptor*,void*) ;
 int usb_fifo_attach (int ,struct ulpt_softc*,int *,int *,int *,int,int,int,int ,int ,int) ;
 int usbd_do_request_flags (int ,struct usb_device_request*,int*,int ,int*,int ) ;
 int usbd_errstr (int) ;
 struct usb_config_descriptor* usbd_get_config_descriptor (int ) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (int ) ;
 int usbd_set_alt_interface_index (int ,int,int) ;
 int usbd_transfer_setup (int ,int*,int ,int ,int ,struct ulpt_softc*,int *) ;

__attribute__((used)) static int
ulpt_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ulpt_softc *sc = device_get_softc(dev);
 struct usb_interface_descriptor *id;
 int unit = device_get_unit(dev);
 int error;
 uint8_t iface_index = uaa->info.bIfaceIndex;
 uint8_t alt_index;

 DPRINTFN(11, "sc=%p\n", sc);

 sc->sc_dev = dev;
 sc->sc_udev = uaa->device;

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "ulpt lock", ((void*)0), MTX_DEF | MTX_RECURSE);

 usb_callout_init_mtx(&sc->sc_watchdog, &sc->sc_mtx, 0);



 id = usbd_get_interface_descriptor(uaa->iface);
 alt_index = 0xFF;
 while (1) {
  if (id == ((void*)0)) {
   break;
  }
  if ((id->bDescriptorType == UDESC_INTERFACE) &&
      (id->bLength >= sizeof(*id))) {
   if (id->bInterfaceNumber != uaa->info.bIfaceNum) {
    break;
   } else {
    alt_index++;
    if ((id->bInterfaceClass == UICLASS_PRINTER) &&
        (id->bInterfaceSubClass == UISUBCLASS_PRINTER) &&
        (id->bInterfaceProtocol == UIPROTO_PRINTER_BI)) {
     goto found;
    }
   }
  }
  id = (void *)usb_desc_foreach(
      usbd_get_config_descriptor(uaa->device), (void *)id);
 }
 goto detach;

found:

 DPRINTF("setting alternate "
     "config number: %d\n", alt_index);

 if (alt_index) {

  error = usbd_set_alt_interface_index
      (uaa->device, iface_index, alt_index);

  if (error) {
   DPRINTF("could not set alternate "
       "config, error=%s\n", usbd_errstr(error));
   goto detach;
  }
 }
 sc->sc_iface_no = id->bInterfaceNumber;

 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, ulpt_config, ULPT_N_TRANSFER,
     sc, &sc->sc_mtx);
 if (error) {
  DPRINTF("error=%s\n", usbd_errstr(error));
  goto detach;
 }
 device_printf(sc->sc_dev, "using bi-directional mode\n");
 error = usb_fifo_attach(uaa->device, sc, &sc->sc_mtx,
     &ulpt_fifo_methods, &sc->sc_fifo,
     unit, -1, uaa->info.bIfaceIndex,
     UID_ROOT, GID_OPERATOR, 0644);
 if (error) {
  goto detach;
 }
 error = usb_fifo_attach(uaa->device, sc, &sc->sc_mtx,
     &unlpt_fifo_methods, &sc->sc_fifo_noreset,
     unit, -1, uaa->info.bIfaceIndex,
     UID_ROOT, GID_OPERATOR, 0644);
 if (error) {
  goto detach;
 }


 mtx_lock(&sc->sc_mtx);
 ulpt_watchdog(sc);
 mtx_unlock(&sc->sc_mtx);
 return (0);

detach:
 ulpt_detach(dev);
 return (ENOMEM);
}
