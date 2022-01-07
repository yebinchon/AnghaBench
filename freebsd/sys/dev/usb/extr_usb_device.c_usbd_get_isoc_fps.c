
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_device {int speed; } ;





uint32_t
usbd_get_isoc_fps(struct usb_device *udev)
{
 ;
 switch (udev->speed) {
 case 128:
 case 129:
  return (1000);
 default:
  return (8000);
 }
}
