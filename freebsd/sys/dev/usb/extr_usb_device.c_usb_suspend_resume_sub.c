
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_device {int dummy; } ;
typedef int * device_t ;


 int DEVICE_RESUME (int *) ;
 int DEVICE_SUSPEND (int *) ;
 int device_is_attached (int *) ;
 int device_printf (int *,char*,char*) ;

__attribute__((used)) static void
usb_suspend_resume_sub(struct usb_device *udev, device_t dev, uint8_t do_suspend)
{
 int err;

 if (dev == ((void*)0)) {
  return;
 }
 if (!device_is_attached(dev)) {
  return;
 }
 if (do_suspend) {
  err = DEVICE_SUSPEND(dev);
 } else {
  err = DEVICE_RESUME(dev);
 }
 if (err) {
  device_printf(dev, "%s failed\n",
      do_suspend ? "Suspend" : "Resume");
 }
}
