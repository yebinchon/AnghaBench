
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {TYPE_1__* ue_methods; } ;
struct ifnet {int if_drv_flags; struct usb_ether* if_softc; } ;
struct TYPE_2__ {int (* ue_start ) (struct usb_ether*) ;} ;


 int IFF_DRV_RUNNING ;
 int UE_LOCK (struct usb_ether*) ;
 int UE_UNLOCK (struct usb_ether*) ;
 int stub1 (struct usb_ether*) ;

__attribute__((used)) static void
ue_start(struct ifnet *ifp)
{
 struct usb_ether *ue = ifp->if_softc;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 UE_LOCK(ue);
 ue->ue_methods->ue_start(ue);
 UE_UNLOCK(ue);
}
