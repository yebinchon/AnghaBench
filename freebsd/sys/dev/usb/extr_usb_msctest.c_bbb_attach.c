
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct usb_interface_descriptor {int bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; } ;
struct usb_interface {struct usb_interface_descriptor* idesc; } ;
struct usb_device {int dummy; } ;
struct usb_config {int dummy; } ;
struct bbb_transfer {int * xfer; void* csw; void* cbw; int buffer_size; void* buffer; int mtx; int cv; } ;


 int MTX_DEF ;
 int M_USB ;
 int M_WAITOK ;
 int M_ZERO ;
 size_t ST_COMMAND ;
 size_t ST_DATA_RD ;
 int ST_MAX ;
 size_t ST_STATUS ;
 struct usb_config* bbb_config ;
 int bbb_detach (struct bbb_transfer*) ;
 struct usb_config* bbb_raw_config ;
 int cv_init (int *,char*) ;
 struct bbb_transfer* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int usb_detach_device (struct usb_device*,int,int ) ;
 int usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,int) ;
 scalar_t__ usbd_transfer_setup (struct usb_device*,int*,int *,struct usb_config const*,int,struct bbb_transfer*,int *) ;
 void* usbd_xfer_get_frame_buffer (int ,int ) ;
 int usbd_xfer_max_len (int ) ;

__attribute__((used)) static struct bbb_transfer *
bbb_attach(struct usb_device *udev, uint8_t iface_index,
    uint8_t bInterfaceClass)
{
 struct usb_interface *iface;
 struct usb_interface_descriptor *id;
 const struct usb_config *pconfig;
 struct bbb_transfer *sc;
 usb_error_t err;
 int nconfig;
 iface = usbd_get_iface(udev, iface_index);
 if (iface == ((void*)0))
  return (((void*)0));

 id = iface->idesc;
 if (id == ((void*)0) || id->bInterfaceClass != bInterfaceClass)
  return (((void*)0));

 switch (id->bInterfaceClass) {
 case 134:
  switch (id->bInterfaceSubClass) {
  case 131:
  case 128:
  case 130:
  case 129:
   break;
  default:
   return (((void*)0));
  }
  switch (id->bInterfaceProtocol) {
  case 132:
  case 133:
   break;
  default:
   return (((void*)0));
  }
  pconfig = bbb_config;
  nconfig = ST_MAX;
  break;
 case 135:
  switch (id->bInterfaceSubClass) {
  case 0:
   break;
  default:
   return (((void*)0));
  }
  pconfig = bbb_raw_config;
  nconfig = 1;
  break;
 default:
  return (((void*)0));
 }

 sc = malloc(sizeof(*sc), M_USB, M_WAITOK | M_ZERO);
 mtx_init(&sc->mtx, "USB autoinstall", ((void*)0), MTX_DEF);
 cv_init(&sc->cv, "WBBB");

 err = usbd_transfer_setup(udev, &iface_index, sc->xfer, pconfig,
     nconfig, sc, &sc->mtx);
 if (err) {
  bbb_detach(sc);
  return (((void*)0));
 }
 switch (id->bInterfaceClass) {
 case 134:

  sc->buffer = usbd_xfer_get_frame_buffer(
      sc->xfer[ST_DATA_RD], 0);
  sc->buffer_size =
      usbd_xfer_max_len(sc->xfer[ST_DATA_RD]);
  sc->cbw = usbd_xfer_get_frame_buffer(
      sc->xfer[ST_COMMAND], 0);
  sc->csw = usbd_xfer_get_frame_buffer(
      sc->xfer[ST_STATUS], 0);
  break;
 default:
  break;
 }
 return (sc);
}
