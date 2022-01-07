
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; int bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; TYPE_1__ info; int device; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int DPRINTFN (int,char*) ;
 int ENXIO ;
 int M_TEMP ;
 scalar_t__ UICLASS_HID ;
 scalar_t__ UIPROTO_MOUSE ;
 scalar_t__ UISUBCLASS_BOOT ;
 int UQ_UMS_IGNORE ;
 scalar_t__ USB_MODE_HOST ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int free (void*,int ) ;
 scalar_t__ hid_is_mouse (void*,int ) ;
 scalar_t__ usb_test_quirk (struct usb_attach_arg*,int ) ;
 int usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int ) ;

__attribute__((used)) static int
ums_probe(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 void *d_ptr;
 int error;
 uint16_t d_len;

 DPRINTFN(11, "\n");

 if (uaa->usb_mode != USB_MODE_HOST)
  return (ENXIO);

 if (uaa->info.bInterfaceClass != UICLASS_HID)
  return (ENXIO);

 if (usb_test_quirk(uaa, UQ_UMS_IGNORE))
  return (ENXIO);

 if ((uaa->info.bInterfaceSubClass == UISUBCLASS_BOOT) &&
     (uaa->info.bInterfaceProtocol == UIPROTO_MOUSE))
  return (BUS_PROBE_DEFAULT);

 error = usbd_req_get_hid_desc(uaa->device, ((void*)0),
     &d_ptr, &d_len, M_TEMP, uaa->info.bIfaceIndex);

 if (error)
  return (ENXIO);

 if (hid_is_mouse(d_ptr, d_len))
  error = BUS_PROBE_DEFAULT;
 else
  error = ENXIO;

 free(d_ptr, M_TEMP);
 return (error);
}
