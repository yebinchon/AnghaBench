
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; int bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; TYPE_1__ info; int device; } ;
typedef int keyboard_switch_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int DPRINTFN (int,char*) ;
 int ENXIO ;
 int M_TEMP ;
 scalar_t__ UICLASS_HID ;
 scalar_t__ UIPROTO_BOOT_KEYBOARD ;
 scalar_t__ UISUBCLASS_BOOT ;
 int UKBD_DRIVER_NAME ;
 int UKBD_LOCK_ASSERT () ;
 int UQ_KBD_IGNORE ;
 scalar_t__ USB_MODE_HOST ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int free (void*,int ) ;
 scalar_t__ hid_is_keyboard (void*,int ) ;
 scalar_t__ hid_is_mouse (void*,int ) ;
 int * kbd_get_switch (int ) ;
 scalar_t__ usb_test_quirk (struct usb_attach_arg*,int ) ;
 int usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int ) ;

__attribute__((used)) static int
ukbd_probe(device_t dev)
{
 keyboard_switch_t *sw = kbd_get_switch(UKBD_DRIVER_NAME);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 void *d_ptr;
 int error;
 uint16_t d_len;

 UKBD_LOCK_ASSERT();
 DPRINTFN(11, "\n");

 if (sw == ((void*)0)) {
  return (ENXIO);
 }
 if (uaa->usb_mode != USB_MODE_HOST) {
  return (ENXIO);
 }

 if (uaa->info.bInterfaceClass != UICLASS_HID)
  return (ENXIO);

 if (usb_test_quirk(uaa, UQ_KBD_IGNORE))
  return (ENXIO);

 if ((uaa->info.bInterfaceSubClass == UISUBCLASS_BOOT) &&
     (uaa->info.bInterfaceProtocol == UIPROTO_BOOT_KEYBOARD))
  return (BUS_PROBE_DEFAULT);

 error = usbd_req_get_hid_desc(uaa->device, ((void*)0),
     &d_ptr, &d_len, M_TEMP, uaa->info.bIfaceIndex);

 if (error)
  return (ENXIO);

 if (hid_is_keyboard(d_ptr, d_len)) {
  if (hid_is_mouse(d_ptr, d_len)) {





   error = ENXIO;
  } else {
   error = BUS_PROBE_DEFAULT;
  }
 } else {
  error = ENXIO;
 }
 free(d_ptr, M_TEMP);
 return (error);
}
