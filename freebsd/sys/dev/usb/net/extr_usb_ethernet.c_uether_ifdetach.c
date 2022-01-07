
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_tq; int ue_unit; int ue_rxq; int ue_sysctl_ctx; int * ue_miibus; int ue_dev; int ue_watchdog; struct ifnet* ue_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int Giant ;
 int IFF_DRV_RUNNING ;
 int UE_LOCK (struct usb_ether*) ;
 int UE_UNLOCK (struct usb_ether*) ;
 int device_delete_child (int ,int *) ;
 int ether_ifdetach (struct ifnet*) ;
 int free_unr (int ,int ) ;
 int if_free (struct ifnet*) ;
 int mbufq_drain (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sysctl_ctx_free (int *) ;
 int ueunit ;
 int usb_callout_drain (int *) ;
 int usb_proc_drain (int *) ;
 int usb_proc_free (int *) ;

void
uether_ifdetach(struct usb_ether *ue)
{
 struct ifnet *ifp;


 usb_proc_drain(&ue->ue_tq);


 ifp = ue->ue_ifp;

 if (ifp != ((void*)0)) {


  UE_LOCK(ue);
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  UE_UNLOCK(ue);


  usb_callout_drain(&ue->ue_watchdog);


  if (ue->ue_miibus != ((void*)0)) {
   mtx_lock(&Giant);
   device_delete_child(ue->ue_dev, ue->ue_miibus);
   mtx_unlock(&Giant);
  }


  ether_ifdetach(ifp);


  if_free(ifp);


  sysctl_ctx_free(&ue->ue_sysctl_ctx);


  mbufq_drain(&ue->ue_rxq);


  free_unr(ueunit, ue->ue_unit);
 }


 usb_proc_free(&ue->ue_tq);
}
