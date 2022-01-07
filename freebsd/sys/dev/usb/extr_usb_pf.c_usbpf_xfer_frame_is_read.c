
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ control_xfr; scalar_t__ control_hdr; scalar_t__ usb_mode; } ;
struct usb_xfer {TYPE_1__ flags_int; } ;


 int USB_GET_DATA_ISREAD (struct usb_xfer*) ;
 scalar_t__ USB_MODE_DEVICE ;

__attribute__((used)) static int
usbpf_xfer_frame_is_read(struct usb_xfer *xfer, uint32_t frame)
{
 int isread;

 if ((frame == 0) && (xfer->flags_int.control_xfr != 0) &&
     (xfer->flags_int.control_hdr != 0)) {

  if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {

   isread = 1;
  } else {

   isread = 0;
  }
 } else {
  isread = USB_GET_DATA_ISREAD(xfer);
 }
 return (isread);
}
