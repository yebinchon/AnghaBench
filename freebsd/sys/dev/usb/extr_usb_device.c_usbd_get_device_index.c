
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int device_index; } ;



uint8_t
usbd_get_device_index(struct usb_device *udev)
{
 return (udev->device_index);
}
