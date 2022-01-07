
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_xfer {TYPE_1__ flags_int; } ;


 scalar_t__ USB_MODE_DEVICE ;
 int usb_handle_request_callback (struct usb_xfer*,int ) ;
 int usbd_do_request_callback (struct usb_xfer*,int ) ;

__attribute__((used)) static void
usb_request_callback(struct usb_xfer *xfer, usb_error_t error)
{
 if (xfer->flags_int.usb_mode == USB_MODE_DEVICE)
  usb_handle_request_callback(xfer, error);
 else
  usbd_do_request_callback(xfer, error);
}
