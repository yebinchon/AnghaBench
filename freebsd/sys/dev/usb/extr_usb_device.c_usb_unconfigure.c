
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int curr_config_index; int curr_config_no; int * cdesc; TYPE_1__ flags; int * linux_endpoint_start; } ;


 int USB_CFG_FREE ;
 int USB_IFACE_INDEX_ANY ;
 scalar_t__ USB_MODE_DEVICE ;
 int USB_UNCONFIG_INDEX ;
 int USB_UNCONFIG_NO ;
 int usb_cdev_free (struct usb_device*) ;
 int usb_config_parse (struct usb_device*,int ,int ) ;
 int usb_detach_device (struct usb_device*,int ,scalar_t__) ;
 int usb_fifo_free_wrap (struct usb_device*,int ,scalar_t__) ;
 int usb_linux_free_device_p (struct usb_device*) ;
 scalar_t__ usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 int usbd_free_config_desc (struct usb_device*,int *) ;

__attribute__((used)) static void
usb_unconfigure(struct usb_device *udev, uint8_t flag)
{
 uint8_t do_unlock;


 do_unlock = usbd_enum_lock(udev);


 usb_detach_device(udev, USB_IFACE_INDEX_ANY, flag);
 usb_config_parse(udev, USB_IFACE_INDEX_ANY, USB_CFG_FREE);


 if (udev->cdesc != ((void*)0)) {
  if (udev->flags.usb_mode != USB_MODE_DEVICE)
   usbd_free_config_desc(udev, udev->cdesc);
  udev->cdesc = ((void*)0);
 }

 udev->curr_config_no = USB_UNCONFIG_NO;
 udev->curr_config_index = USB_UNCONFIG_INDEX;

 if (do_unlock)
  usbd_enum_unlock(udev);
}
