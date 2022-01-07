
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int bus; } ;


 int DPRINTF (char*) ;
 int dwc_otg_do_poll (int ) ;

__attribute__((used)) static void
dwc_otg_device_resume(struct usb_device *udev)
{
 DPRINTF("\n");


 dwc_otg_do_poll(udev->bus);
}
