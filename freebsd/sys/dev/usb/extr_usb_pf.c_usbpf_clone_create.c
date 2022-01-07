
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int parent; struct ifnet* ifp; } ;
struct ifnet {int if_dunit; int if_flags; int if_ioctl; int if_dname; struct usb_bus* if_softc; int if_xname; } ;
struct if_clone {int dummy; } ;
typedef int caddr_t ;


 int DLT_USB ;
 int EINVAL ;
 int ENOSPC ;
 int IFF_UP ;
 int IFT_USB ;
 int USBPF_HDR_LEN ;
 int bpfattach (struct ifnet*,int ,int ) ;
 int device_printf (int ,char*) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int ifc_alloc_unit (struct if_clone*,int*) ;
 int ifc_free_unit (struct if_clone*,int) ;
 int ifc_name2unit (char*,int*) ;
 int rt_ifmsg (struct ifnet*) ;
 int strlcpy (int ,char*,int) ;
 struct usb_bus* usbpf_ifname2ubus (char*) ;
 int usbpf_ioctl ;
 int usbusname ;

__attribute__((used)) static int
usbpf_clone_create(struct if_clone *ifc, char *name, size_t len, caddr_t params)
{
 int error;
 int unit;
 struct ifnet *ifp;
 struct usb_bus *ubus;

 error = ifc_name2unit(name, &unit);
 if (error)
  return (error);
  if (unit < 0)
  return (EINVAL);

 ubus = usbpf_ifname2ubus(name);
 if (ubus == ((void*)0))
  return (1);
 if (ubus->ifp != ((void*)0))
  return (1);

 error = ifc_alloc_unit(ifc, &unit);
 if (error) {
  device_printf(ubus->parent, "usbpf: Could not allocate "
      "instance\n");
  return (error);
 }
 ifp = ubus->ifp = if_alloc(IFT_USB);
 if (ifp == ((void*)0)) {
  ifc_free_unit(ifc, unit);
  device_printf(ubus->parent, "usbpf: Could not allocate "
      "instance\n");
  return (ENOSPC);
 }
 strlcpy(ifp->if_xname, name, sizeof(ifp->if_xname));
 ifp->if_softc = ubus;
 ifp->if_dname = usbusname;
 ifp->if_dunit = unit;
 ifp->if_ioctl = usbpf_ioctl;
 if_attach(ifp);
 ifp->if_flags |= IFF_UP;
 rt_ifmsg(ifp);





 bpfattach(ifp, DLT_USB, USBPF_HDR_LEN);

 return (0);
}
