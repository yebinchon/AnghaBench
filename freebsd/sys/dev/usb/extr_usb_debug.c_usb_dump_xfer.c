
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_xfer {TYPE_4__* endpoint; TYPE_1__* xroot; } ;
struct TYPE_6__ {int idProduct; int idVendor; } ;
struct usb_device {int address; TYPE_2__ ddesc; } ;
struct TYPE_8__ {TYPE_3__* edesc; } ;
struct TYPE_7__ {int bEndpointAddress; int bmAttributes; } ;
struct TYPE_5__ {struct usb_device* udev; } ;


 int UGETW (int ) ;
 int printf (char*,struct usb_xfer*,...) ;

void
usb_dump_xfer(struct usb_xfer *xfer)
{
 struct usb_device *udev;
 printf("usb_dump_xfer: xfer=%p\n", xfer);
 if (xfer == ((void*)0)) {
  return;
 }
 if (xfer->endpoint == ((void*)0)) {
  printf("xfer %p: endpoint=NULL\n",
      xfer);
  return;
 }
 udev = xfer->xroot->udev;
 printf("xfer %p: udev=%p vid=0x%04x pid=0x%04x addr=%d "
     "endpoint=%p ep=0x%02x attr=0x%02x\n",
     xfer, udev,
     UGETW(udev->ddesc.idVendor),
     UGETW(udev->ddesc.idProduct),
     udev->address, xfer->endpoint,
     xfer->endpoint->edesc->bEndpointAddress,
     xfer->endpoint->edesc->bmAttributes);
}
