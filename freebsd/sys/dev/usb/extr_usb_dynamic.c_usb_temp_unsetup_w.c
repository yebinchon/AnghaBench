
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int * usb_template_ptr; } ;


 int usbd_free_config_desc (struct usb_device*,int *) ;

__attribute__((used)) static void
usb_temp_unsetup_w(struct usb_device *udev)
{
 usbd_free_config_desc(udev, udev->usb_template_ptr);
 udev->usb_template_ptr = ((void*)0);
}
