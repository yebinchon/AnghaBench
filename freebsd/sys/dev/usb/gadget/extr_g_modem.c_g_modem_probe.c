
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct usb_attach_arg {scalar_t__ usb_mode; TYPE_1__ info; } ;
typedef int device_t ;


 int DPRINTFN (int,char*) ;
 int ENXIO ;
 scalar_t__ UICLASS_CDC ;
 scalar_t__ UIPROTO_CDC_AT ;
 scalar_t__ UISUBCLASS_ABSTRACT_CONTROL_MODEL ;
 scalar_t__ USB_MODE_DEVICE ;
 struct usb_attach_arg* device_get_ivars (int ) ;

__attribute__((used)) static int
g_modem_probe(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);

 DPRINTFN(11, "\n");

 if (uaa->usb_mode != USB_MODE_DEVICE)
  return (ENXIO);

 if ((uaa->info.bInterfaceClass == UICLASS_CDC) &&
     (uaa->info.bInterfaceSubClass == UISUBCLASS_ABSTRACT_CONTROL_MODEL) &&
     (uaa->info.bInterfaceProtocol == UIPROTO_CDC_AT))
  return (0);

 return (ENXIO);
}
