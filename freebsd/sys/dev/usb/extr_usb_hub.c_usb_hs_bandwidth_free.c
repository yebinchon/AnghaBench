
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_xfer {TYPE_4__* endpoint; int max_frame_size; TYPE_1__* xroot; } ;
struct TYPE_6__ {scalar_t__ usb_mode; } ;
struct usb_device {TYPE_2__ flags; } ;
struct TYPE_8__ {scalar_t__ refcount_bw; int usb_uframe; int usb_smask; int usb_cmask; TYPE_3__* edesc; } ;
struct TYPE_7__ {int bmAttributes; } ;
struct TYPE_5__ {struct usb_device* udev; } ;


 int DPRINTFN (int,char*,int,int) ;


 int UE_XFERTYPE ;
 scalar_t__ USB_MODE_HOST ;
 int usb_hs_bandwidth_adjust (struct usb_device*,int ,int,int) ;

void
usb_hs_bandwidth_free(struct usb_xfer *xfer)
{
 struct usb_device *udev;
 uint8_t slot;
 uint8_t mask;

 udev = xfer->xroot->udev;

 if (udev->flags.usb_mode != USB_MODE_HOST)
  return;

 xfer->endpoint->refcount_bw--;
 if (xfer->endpoint->refcount_bw != 0)
  return;

 switch (xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE) {
 case 129:
 case 128:

  slot = xfer->endpoint->usb_uframe;
  mask = xfer->endpoint->usb_smask;


  usb_hs_bandwidth_adjust(udev,
      -xfer->max_frame_size, slot, mask >> slot);

  DPRINTFN(11, "slot=%d, mask=0x%02x\n",
      slot, mask >> slot);

  xfer->endpoint->usb_uframe = 0;
  xfer->endpoint->usb_cmask = 0;
  xfer->endpoint->usb_smask = 0;
  break;

 default:
  break;
 }
}
