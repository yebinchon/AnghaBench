
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int * ifp; } ;
struct ifnet {int if_dunit; struct usb_bus* if_softc; } ;
struct if_clone {int dummy; } ;


 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 int bpfdetach (struct ifnet*) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ifc_free_unit (struct if_clone*,int) ;

__attribute__((used)) static int
usbpf_clone_destroy(struct if_clone *ifc, struct ifnet *ifp)
{
 struct usb_bus *ubus;
 int unit;

 ubus = ifp->if_softc;
 unit = ifp->if_dunit;





 USB_BUS_LOCK(ubus);
 ubus->ifp = ((void*)0);
 USB_BUS_UNLOCK(ubus);
 bpfdetach(ifp);
 if_detach(ifp);
 if_free(ifp);
 ifc_free_unit(ifc, unit);

 return (0);
}
