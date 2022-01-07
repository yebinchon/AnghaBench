
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct usb_attach_arg {scalar_t__ usb_mode; int iface; } ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 scalar_t__ UICLASS_MASS ;
 scalar_t__ UIPROTO_MASS_BBB ;
 scalar_t__ UISUBCLASS_SCSI ;
 scalar_t__ USB_MODE_DEVICE ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (int ) ;

__attribute__((used)) static int
cfumass_probe(device_t dev)
{
 struct usb_attach_arg *uaa;
 struct usb_interface_descriptor *id;

 uaa = device_get_ivars(dev);

 if (uaa->usb_mode != USB_MODE_DEVICE)
  return (ENXIO);




 id = usbd_get_interface_descriptor(uaa->iface);
 if ((id == ((void*)0)) ||
     (id->bInterfaceClass != UICLASS_MASS) ||
     (id->bInterfaceSubClass != UISUBCLASS_SCSI) ||
     (id->bInterfaceProtocol != UIPROTO_MASS_BBB)) {
  return (ENXIO);
 }

 return (BUS_PROBE_GENERIC);
}
