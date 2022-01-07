
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int speed; int depth; } ;


 int USB_HUB_MAX_DEPTH ;




 int USB_SS_HUB_DEPTH_MAX ;

__attribute__((used)) static uint8_t
uhub_is_too_deep(struct usb_device *udev)
{
 switch (udev->speed) {
 case 131:
 case 129:
 case 130:
  if (udev->depth > USB_HUB_MAX_DEPTH)
   return (1);
  break;
 case 128:
  if (udev->depth > USB_SS_HUB_DEPTH_MAX)
   return (1);
  break;
 default:
  break;
 }
 return (0);
}
