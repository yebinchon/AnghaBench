
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int DPRINTF (char*) ;

__attribute__((used)) static void
octusb_xfer_unsetup(struct usb_xfer *xfer)
{
 DPRINTF("Nothing to do.\n");
}
