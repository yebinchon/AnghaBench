
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_device {scalar_t__ speed; TYPE_1__* parent_hs_hub; } ;
struct TYPE_2__ {int * parent_hub; } ;


 scalar_t__ USB_SPEED_HIGH ;

__attribute__((used)) static uint8_t
dwc_otg_uses_split(struct usb_device *udev)
{




 return (udev->speed != USB_SPEED_HIGH &&
     udev->parent_hs_hub != ((void*)0) &&
     udev->parent_hs_hub->parent_hub != ((void*)0));
}
