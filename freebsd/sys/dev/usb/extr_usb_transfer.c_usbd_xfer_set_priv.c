
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {void* priv_fifo; } ;



void
usbd_xfer_set_priv(struct usb_xfer *xfer, void *ptr)
{
 xfer->priv_fifo = ptr;
}
