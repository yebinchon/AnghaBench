
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;


 int run_bulk_tx_callbackN (struct usb_xfer*,int ,int) ;

__attribute__((used)) static void
run_bulk_tx_callback3(struct usb_xfer *xfer, usb_error_t error)
{
 run_bulk_tx_callbackN(xfer, error, 3);
}
