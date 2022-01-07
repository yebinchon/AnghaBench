
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;


 int umcs7840_read_callbackN (struct usb_xfer*,int ,int) ;

__attribute__((used)) static void
umcs7840_read_callback2(struct usb_xfer *xfer, usb_error_t error)
{
 umcs7840_read_callbackN(xfer, error, 1);
}
