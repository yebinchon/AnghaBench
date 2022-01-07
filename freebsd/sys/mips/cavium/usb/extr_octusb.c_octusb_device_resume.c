
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int DPRINTF (char*) ;

__attribute__((used)) static void
octusb_device_resume(struct usb_device *udev)
{
 DPRINTF("Nothing to do.\n");
}
