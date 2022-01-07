
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int speed; } ;






__attribute__((used)) static uint8_t
usb_device_20_compatible(struct usb_device *udev)
{
 if (udev == ((void*)0))
  return (0);
 switch (udev->speed) {
 case 128:
 case 130:
 case 129:
  return (1);
 default:
  return (0);
 }
}
