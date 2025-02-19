
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_interface {char* pnpinfo; TYPE_4__* idesc; } ;
struct usb_hub {int dummy; } ;
struct uhub_softc {TYPE_1__* sc_udev; } ;
struct hub_result {TYPE_5__* udev; int iface_index; } ;
typedef int device_t ;
struct TYPE_9__ {scalar_t__ usb_mode; } ;
struct TYPE_8__ {int bDeviceClass; int bDeviceSubClass; int bDeviceProtocol; int bcdDevice; int idProduct; int idVendor; } ;
struct TYPE_11__ {TYPE_3__ flags; TYPE_2__ ddesc; } ;
struct TYPE_10__ {int bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; } ;
struct TYPE_7__ {struct usb_hub* hub; } ;


 int DPRINTF (char*) ;
 int Giant ;
 int UGETW (int ) ;
 scalar_t__ USB_MODE_HOST ;
 struct uhub_softc* device_get_softc (int ) ;
 int device_is_attached (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int snprintf (char*,size_t,char*,int,int,int,int,int,char*,int,char*,int,int,int,char*,char*) ;
 int uhub_find_iface_index (struct usb_hub*,int ,struct hub_result*) ;
 char* usb_get_serial (TYPE_5__*) ;
 struct usb_interface* usbd_get_iface (TYPE_5__*,int ) ;

__attribute__((used)) static int
uhub_child_pnpinfo_string(device_t parent, device_t child,
    char *buf, size_t buflen)
{
 struct uhub_softc *sc;
 struct usb_hub *hub;
 struct usb_interface *iface;
 struct hub_result res;

 if (!device_is_attached(parent)) {
  if (buflen)
   buf[0] = 0;
  return (0);
 }

 sc = device_get_softc(parent);
 hub = sc->sc_udev->hub;

 mtx_lock(&Giant);
 uhub_find_iface_index(hub, child, &res);
 if (!res.udev) {
  DPRINTF("device not on hub\n");
  if (buflen) {
   buf[0] = '\0';
  }
  goto done;
 }
 iface = usbd_get_iface(res.udev, res.iface_index);
 if (iface && iface->idesc) {
  snprintf(buf, buflen, "vendor=0x%04x product=0x%04x "
      "devclass=0x%02x devsubclass=0x%02x "
      "devproto=0x%02x "
      "sernum=\"%s\" "
      "release=0x%04x "
      "mode=%s "
      "intclass=0x%02x intsubclass=0x%02x "
      "intprotocol=0x%02x" "%s%s",
      UGETW(res.udev->ddesc.idVendor),
      UGETW(res.udev->ddesc.idProduct),
      res.udev->ddesc.bDeviceClass,
      res.udev->ddesc.bDeviceSubClass,
      res.udev->ddesc.bDeviceProtocol,
      usb_get_serial(res.udev),
      UGETW(res.udev->ddesc.bcdDevice),
      (res.udev->flags.usb_mode == USB_MODE_HOST) ? "host" : "device",
      iface->idesc->bInterfaceClass,
      iface->idesc->bInterfaceSubClass,
      iface->idesc->bInterfaceProtocol,
      iface->pnpinfo ? " " : "",
      iface->pnpinfo ? iface->pnpinfo : "");
 } else {
  if (buflen) {
   buf[0] = '\0';
  }
  goto done;
 }
done:
 mtx_unlock(&Giant);

 return (0);
}
