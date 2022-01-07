
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_xfer {scalar_t__ address; } ;
struct TYPE_7__ {scalar_t__ bMaxPacketSize; } ;
struct TYPE_6__ {scalar_t__* wMaxPacketSize; } ;
struct TYPE_5__ {scalar_t__ usb_mode; } ;
struct usb_device {scalar_t__ address; int device_mtx; TYPE_4__* bus; struct usb_xfer** ctrl_xfer; scalar_t__ clear_stall_errors; TYPE_3__ ddesc; TYPE_2__ ctrl_ep_desc; TYPE_1__ flags; int * parent_hub; } ;
struct TYPE_8__ {scalar_t__ control_ep_quirk; } ;


 int DPRINTFN (int ,char*) ;
 int USB_CTRL_XFER_MAX ;
 scalar_t__ USB_MODE_DEVICE ;
 int USB_XFER_LOCK (struct usb_xfer*) ;
 int USB_XFER_UNLOCK (struct usb_xfer*) ;
 int usb_control_ep_cfg ;
 int usb_control_ep_quirk_cfg ;
 scalar_t__ usbd_transfer_setup (struct usb_device*,int*,struct usb_xfer**,int ,int ,int *,int *) ;
 int usbd_transfer_start (struct usb_xfer*) ;
 int usbd_transfer_unsetup (struct usb_xfer**,int ) ;

void
usbd_ctrl_transfer_setup(struct usb_device *udev)
{
 struct usb_xfer *xfer;
 uint8_t no_resetup;
 uint8_t iface_index;


 if (udev->parent_hub == ((void*)0))
  return;
repeat:

 xfer = udev->ctrl_xfer[0];
 if (xfer) {
  USB_XFER_LOCK(xfer);
  no_resetup =
      ((xfer->address == udev->address) &&
      (udev->ctrl_ep_desc.wMaxPacketSize[0] ==
      udev->ddesc.bMaxPacketSize));
  if (udev->flags.usb_mode == USB_MODE_DEVICE) {
   if (no_resetup) {





    usbd_transfer_start(xfer);
   }
  }
  USB_XFER_UNLOCK(xfer);
 } else {
  no_resetup = 0;
 }

 if (no_resetup) {




  return;
 }



 udev->ctrl_ep_desc.wMaxPacketSize[0] =
     udev->ddesc.bMaxPacketSize;




 usbd_transfer_unsetup(udev->ctrl_xfer, USB_CTRL_XFER_MAX);




 udev->clear_stall_errors = 0;





 iface_index = 0;
 if (usbd_transfer_setup(udev, &iface_index,
     udev->ctrl_xfer, udev->bus->control_ep_quirk ?
     usb_control_ep_quirk_cfg : usb_control_ep_cfg, USB_CTRL_XFER_MAX, ((void*)0),
     &udev->device_mtx)) {
  DPRINTFN(0, "could not setup default "
      "USB transfer\n");
 } else {
  goto repeat;
 }
}
