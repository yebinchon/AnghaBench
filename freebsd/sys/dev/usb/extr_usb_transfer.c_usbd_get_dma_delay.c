
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_timeout_t ;
typedef int uint32_t ;
struct usb_device {TYPE_1__* bus; } ;
struct usb_bus_methods {int (* get_dma_delay ) (struct usb_device*,int*) ;} ;
struct TYPE_2__ {struct usb_bus_methods* methods; } ;


 int stub1 (struct usb_device*,int*) ;

usb_timeout_t
usbd_get_dma_delay(struct usb_device *udev)
{
 const struct usb_bus_methods *mtod;
 uint32_t temp;

 mtod = udev->bus->methods;
 temp = 0;

 if (mtod->get_dma_delay) {
  (mtod->get_dma_delay) (udev, &temp);




  temp += 0x3FF;
  temp /= 0x400;
 }
 return (temp);
}
