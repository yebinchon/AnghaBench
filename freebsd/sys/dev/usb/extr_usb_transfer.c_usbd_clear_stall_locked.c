
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_endpoint {int * methods; } ;
struct TYPE_4__ {scalar_t__ usb_mode; } ;
struct usb_device {TYPE_3__* bus; int * parent_hub; TYPE_1__ flags; } ;
struct TYPE_6__ {TYPE_2__* methods; } ;
struct TYPE_5__ {int (* clear_stall ) (struct usb_device*,struct usb_endpoint*) ;} ;


 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (TYPE_3__*,int ) ;
 scalar_t__ USB_MODE_HOST ;
 int stub1 (struct usb_device*,struct usb_endpoint*) ;

void
usbd_clear_stall_locked(struct usb_device *udev, struct usb_endpoint *ep)
{
 USB_BUS_LOCK_ASSERT(udev->bus, MA_OWNED);


 if (udev->flags.usb_mode == USB_MODE_HOST &&
     udev->parent_hub != ((void*)0) &&
     udev->bus->methods->clear_stall != ((void*)0) &&
     ep->methods != ((void*)0)) {
  (udev->bus->methods->clear_stall) (udev, ep);
 }
}
