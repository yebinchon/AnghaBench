
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_xfer {int usb_state; } ;



uint8_t
usbd_xfer_state(struct usb_xfer *xfer)
{
 return (xfer->usb_state);
}
