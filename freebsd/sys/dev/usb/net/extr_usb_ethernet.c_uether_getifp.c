
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {struct ifnet* ue_ifp; } ;
struct ifnet {int dummy; } ;



struct ifnet *
uether_getifp(struct usb_ether *ue)
{
 return (ue->ue_ifp);
}
