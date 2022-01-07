
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {void* priv_fifo; } ;



void *
usbd_xfer_get_priv(struct usb_xfer *xfer)
{
 return (xfer->priv_fifo);
}
