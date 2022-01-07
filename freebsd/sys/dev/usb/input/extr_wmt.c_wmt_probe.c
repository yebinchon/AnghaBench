
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ bInterfaceClass; int bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; TYPE_1__ info; int device; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int M_TEMP ;
 scalar_t__ UICLASS_HID ;
 int UQ_WMT_IGNORE ;
 scalar_t__ USB_MODE_HOST ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int free (void*,int ) ;
 scalar_t__ usb_test_quirk (struct usb_attach_arg*,int ) ;
 int usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int ) ;
 scalar_t__ wmt_hid_parse (int *,void*,int ) ;

__attribute__((used)) static int
wmt_probe(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 void *d_ptr;
 uint16_t d_len;
 int err;

 if (uaa->usb_mode != USB_MODE_HOST)
  return (ENXIO);

 if (uaa->info.bInterfaceClass != UICLASS_HID)
  return (ENXIO);

 if (usb_test_quirk(uaa, UQ_WMT_IGNORE))
  return (ENXIO);

 err = usbd_req_get_hid_desc(uaa->device, ((void*)0),
     &d_ptr, &d_len, M_TEMP, uaa->info.bIfaceIndex);
 if (err)
  return (ENXIO);

 if (wmt_hid_parse(((void*)0), d_ptr, d_len))
  err = BUS_PROBE_DEFAULT;
 else
  err = ENXIO;

 free(d_ptr, M_TEMP);
 return (err);
}
