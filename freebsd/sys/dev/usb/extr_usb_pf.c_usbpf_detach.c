
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int parent; int * ifp; } ;


 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int usbpf_clone_destroy (int ,int *) ;
 int usbpf_cloner ;

void
usbpf_detach(struct usb_bus *ubus)
{

 if (ubus->ifp != ((void*)0))
  usbpf_clone_destroy(usbpf_cloner, ubus->ifp);
 if (bootverbose)
  device_printf(ubus->parent, "usbpf: Detached\n");
}
