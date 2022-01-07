
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_data_xfer_block {int blen; int ccs; scalar_t__ bdone; scalar_t__ processed; void* hci_data; void* buf; } ;
struct usb_data_xfer {int ndata; size_t tail; struct usb_data_xfer_block* data; } ;


 int USB_MAX_XFER_BLOCKS ;

struct usb_data_xfer_block *
usb_data_xfer_append(struct usb_data_xfer *xfer, void *buf, int blen,
                     void *hci_data, int ccs)
{
 struct usb_data_xfer_block *xb;

 if (xfer->ndata >= USB_MAX_XFER_BLOCKS)
  return (((void*)0));

 xb = &xfer->data[xfer->tail];
 xb->buf = buf;
 xb->blen = blen;
 xb->hci_data = hci_data;
 xb->ccs = ccs;
 xb->processed = 0;
 xb->bdone = 0;
 xfer->ndata++;
 xfer->tail = (xfer->tail + 1) % USB_MAX_XFER_BLOCKS;
 return (xb);
}
