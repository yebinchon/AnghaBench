
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_device {TYPE_1__* bus; } ;
struct usb_bus_methods {int (* get_power_mode ) (struct usb_device*,int*) ;} ;
typedef int int8_t ;
struct TYPE_2__ {struct usb_bus_methods* methods; } ;


 int stub1 (struct usb_device*,int*) ;

uint8_t
usbd_filter_power_mode(struct usb_device *udev, uint8_t power_mode)
{
 const struct usb_bus_methods *mtod;
 int8_t temp;

 mtod = udev->bus->methods;
 temp = -1;

 if (mtod->get_power_mode != ((void*)0))
  (mtod->get_power_mode) (udev, &temp);


 if (temp < 0)
  return (power_mode);


 return (temp);
}
