
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_interface {TYPE_2__* idesc; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct usb_device {TYPE_3__* bus; TYPE_1__ scratch; } ;
struct usb_attach_arg {struct usb_interface* iface; struct usb_device* device; } ;
typedef int * device_t ;
struct TYPE_6__ {int bdev; } ;
struct TYPE_5__ {scalar_t__ iInterface; } ;


 scalar_t__ USB_ERR_INVAL ;
 struct usb_attach_arg* device_get_ivars (int *) ;
 int device_get_nameunit (int ) ;
 int device_printf (int *,char*,char*,int ) ;
 int device_set_desc_copy (int *,char*) ;
 int usb_devinfo (struct usb_device*,char*,int) ;
 scalar_t__ usbd_ctrl_lock (struct usb_device*) ;
 int usbd_ctrl_unlock (struct usb_device*) ;
 scalar_t__ usbd_req_get_string_any (struct usb_device*,int *,char*,int,scalar_t__) ;

void
device_set_usb_desc(device_t dev)
{
 struct usb_attach_arg *uaa;
 struct usb_device *udev;
 struct usb_interface *iface;
 char *temp_p;
 usb_error_t err;
 uint8_t do_unlock;

 if (dev == ((void*)0)) {

  return;
 }
 uaa = device_get_ivars(dev);
 if (uaa == ((void*)0)) {

  return;
 }
 udev = uaa->device;
 iface = uaa->iface;

 if ((iface == ((void*)0)) ||
     (iface->idesc == ((void*)0)) ||
     (iface->idesc->iInterface == 0)) {
  err = USB_ERR_INVAL;
 } else {
  err = 0;
 }


 do_unlock = usbd_ctrl_lock(udev);

 temp_p = (char *)udev->scratch.data;

 if (err == 0) {

  err = usbd_req_get_string_any(udev, ((void*)0), temp_p,
      sizeof(udev->scratch.data),
      iface->idesc->iInterface);
 }
 if (err != 0) {

  usb_devinfo(udev, temp_p,
      sizeof(udev->scratch.data));
 }

 if (do_unlock)
  usbd_ctrl_unlock(udev);

 device_set_desc_copy(dev, temp_p);
 device_printf(dev, "<%s> on %s\n", temp_p,
     device_get_nameunit(udev->bus->bdev));
}
