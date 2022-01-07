
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int M_USBDEV ;
 int free (void*,int ) ;

void
usbd_free_config_desc(struct usb_device *udev, void *ptr)
{

 free(ptr, M_USBDEV);

}
