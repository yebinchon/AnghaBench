
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_interface {scalar_t__ parent_iface_index; int * subdev; } ;
struct TYPE_2__ {scalar_t__ peer_suspended; } ;
struct usb_device {TYPE_1__ flags; int * parent_dev; } ;
struct usb_attach_arg {int * temp_dev; struct usb_interface* iface; } ;
typedef int * device_t ;


 int DEVICE_SUSPEND (int *) ;
 scalar_t__ USB_IFACE_INDEX_ANY ;
 int * device_add_child (int *,int *,int) ;
 scalar_t__ device_delete_child (int *,int *) ;
 scalar_t__ device_is_attached (int *) ;
 int device_printf (int *,char*) ;
 scalar_t__ device_probe_and_attach (int *) ;
 int device_quiet (int *) ;
 int device_set_ivars (int *,struct usb_attach_arg*) ;
 int panic (char*) ;

__attribute__((used)) static uint8_t
usb_probe_and_attach_sub(struct usb_device *udev,
    struct usb_attach_arg *uaa)
{
 struct usb_interface *iface;
 device_t dev;
 int err;

 iface = uaa->iface;
 if (iface->parent_iface_index != USB_IFACE_INDEX_ANY) {

  return (0);
 }
 dev = iface->subdev;
 if (dev) {



  if (device_is_attached(dev)) {

   return (0);
  }


  iface->subdev = ((void*)0);

  if (device_delete_child(udev->parent_dev, dev)) {






   panic("device_delete_child() failed\n");
  }
 }
 if (uaa->temp_dev == ((void*)0)) {


  uaa->temp_dev = device_add_child(udev->parent_dev, ((void*)0), -1);
  if (uaa->temp_dev == ((void*)0)) {
   device_printf(udev->parent_dev,
       "Device creation failed\n");
   return (1);
  }
  device_set_ivars(uaa->temp_dev, uaa);
  device_quiet(uaa->temp_dev);
 }




 iface->subdev = uaa->temp_dev;

 if (device_probe_and_attach(iface->subdev) == 0) {




  uaa->temp_dev = ((void*)0);
  device_set_ivars(iface->subdev, ((void*)0));

  if (udev->flags.peer_suspended) {
   err = DEVICE_SUSPEND(iface->subdev);
   if (err)
    device_printf(iface->subdev, "Suspend failed\n");
  }
  return (0);
 } else {

  iface->subdev = ((void*)0);
 }
 return (1);
}
