
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int enum_sx; } ;


 int sx_xlocked (int *) ;

uint8_t
usbd_enum_is_locked(struct usb_device *udev)
{
 return (sx_xlocked(&udev->enum_sx));
}
