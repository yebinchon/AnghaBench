
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {void* priv_sc; } ;



void *
usbd_xfer_softc(struct usb_xfer *xfer)
{
 return (xfer->priv_sc);
}
