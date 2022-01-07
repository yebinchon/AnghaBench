
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {TYPE_2__* xroot; } ;
struct TYPE_4__ {TYPE_1__* udev; } ;
struct TYPE_3__ {int ctrlreq_cv; } ;


 int DPRINTF (char*,int) ;
 int USB_GET_STATE (struct usb_xfer*) ;

 int cv_signal (int *) ;
 int usbd_transfer_submit (struct usb_xfer*) ;

void
usbd_do_request_callback(struct usb_xfer *xfer, usb_error_t error)
{
 ;

 DPRINTF("st=%u\n", USB_GET_STATE(xfer));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  usbd_transfer_submit(xfer);
  break;
 default:
  cv_signal(&xfer->xroot->udev->ctrlreq_cv);
  break;
 }
}
