
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int * ifp; } ;
struct if_clone {int dummy; } ;


 struct usb_bus* usbpf_ifname2ubus (char const*) ;

__attribute__((used)) static int
usbpf_clone_match(struct if_clone *ifc, const char *name)
{
 struct usb_bus *ubus;

 ubus = usbpf_ifname2ubus(name);
 if (ubus == ((void*)0))
  return (0);
 if (ubus->ifp != ((void*)0))
  return (0);

 return (1);
}
