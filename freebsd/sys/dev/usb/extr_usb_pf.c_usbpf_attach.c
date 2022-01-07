
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int parent; } ;


 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;

void
usbpf_attach(struct usb_bus *ubus)
{

 if (bootverbose)
  device_printf(ubus->parent, "usbpf: Attached\n");
}
