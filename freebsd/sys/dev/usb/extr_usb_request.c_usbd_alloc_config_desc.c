
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct usb_device {void* config_data; } ;


 int DPRINTF (char*) ;
 int M_USBDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ USB_CONFIG_MAX ;
 void* malloc (scalar_t__,int ,int) ;
 int memset (void*,int ,int) ;

void *
usbd_alloc_config_desc(struct usb_device *udev, uint32_t size)
{
 if (size > USB_CONFIG_MAX) {
  DPRINTF("Configuration descriptor too big\n");
  return (((void*)0));
 }

 return (malloc(size, M_USBDEV, M_ZERO | M_WAITOK));




}
