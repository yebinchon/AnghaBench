
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
struct TYPE_8__ {int refcount_bw; int usb_uframe; int usb_smask; int usb_cmask; TYPE_3__* edesc; } ;
struct TYPE_7__ {int bmAttributes; } ;
struct TYPE_5__ {struct usb_device* udev; } ;


 int DPRINTFN (int,char*,int,int) ;


 int UE_XFERTYPE ;
 int USB_HS_MICRO_FRAMES_MAX ;
 scalar_t__ USB_MODE_HOST ;
 int USB_SPEED_FULL ;
 int USB_SPEED_LOW ;
 int usb_hs_bandwidth_adjust (struct usb_device*,int ,int ,int) ;
 int usbd_get_speed (struct usb_device*) ;
 int usbd_xfer_get_fps_shift (struct usb_xfer*) ;

void
usb_hs_bandwidth_alloc(struct usb_xfer *xfer)
{
 struct usb_device *udev;
 uint8_t slot;
 uint8_t mask;
 uint8_t speed;

 udev = xfer->xroot->udev;

 if (udev->flags.usb_mode != USB_MODE_HOST)
  return;

 xfer->endpoint->refcount_bw++;
 if (xfer->endpoint->refcount_bw != 1)
  return;

 speed = usbd_get_speed(udev);

 switch (xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE) {
 case 129:


  mask = 0x01;
  slot = usb_hs_bandwidth_adjust(udev,
      xfer->max_frame_size, USB_HS_MICRO_FRAMES_MAX, mask);

  xfer->endpoint->usb_uframe = slot;
  xfer->endpoint->usb_smask = mask << slot;

  if ((speed != USB_SPEED_FULL) &&
      (speed != USB_SPEED_LOW)) {
   xfer->endpoint->usb_cmask = 0x00 ;
  } else {
   xfer->endpoint->usb_cmask = (-(0x04 << slot)) & 0xFE;
  }
  break;

 case 128:
  switch (usbd_xfer_get_fps_shift(xfer)) {
  case 0:
   mask = 0xFF;
   break;
  case 1:
   mask = 0x55;
   break;
  case 2:
   mask = 0x11;
   break;
  default:
   mask = 0x01;
   break;
  }



  slot = usb_hs_bandwidth_adjust(udev,
      xfer->max_frame_size, USB_HS_MICRO_FRAMES_MAX, mask);

  xfer->endpoint->usb_uframe = slot;
  xfer->endpoint->usb_cmask = 0;
  xfer->endpoint->usb_smask = mask << slot;
  break;

 default:
  xfer->endpoint->usb_uframe = 0;
  xfer->endpoint->usb_cmask = 0;
  xfer->endpoint->usb_smask = 0;
  break;
 }

 DPRINTFN(11, "slot=%d, mask=0x%02x\n",
     xfer->endpoint->usb_uframe,
     xfer->endpoint->usb_smask >> xfer->endpoint->usb_uframe);
}
