
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int bdev; } ;


 scalar_t__ device_get_unit (int ) ;

uint8_t
usbd_get_bus_index(struct usb_device *udev)
{
 return ((uint8_t)device_get_unit(udev->bus->bdev));
}
