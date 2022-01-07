
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct usb_ether {int * ue_miibus; TYPE_3__* ue_multi_task; TYPE_2__* ue_sync_task; TYPE_1__* ue_promisc_task; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct usb_ether* if_softc; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_6__ {int hdr; } ;
struct TYPE_5__ {int hdr; } ;
struct TYPE_4__ {int hdr; } ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;





 int UE_LOCK (struct usb_ether*) ;
 int UE_UNLOCK (struct usb_ether*) ;
 struct mii_data* device_get_softc (int *) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int ue_promisc_task ;
 int ue_queue_command (struct usb_ether*,int ,int *,int *) ;
 int ue_setmulti_task ;
 int ue_start_task ;
 int ue_stop_task ;

int
uether_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct usb_ether *ue = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 struct mii_data *mii;
 int error = 0;

 switch (command) {
 case 129:
  UE_LOCK(ue);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    ue_queue_command(ue, ue_promisc_task,
        &ue->ue_promisc_task[0].hdr,
        &ue->ue_promisc_task[1].hdr);
   else
    ue_queue_command(ue, ue_start_task,
        &ue->ue_sync_task[0].hdr,
        &ue->ue_sync_task[1].hdr);
  } else {
   ue_queue_command(ue, ue_stop_task,
       &ue->ue_sync_task[0].hdr,
       &ue->ue_sync_task[1].hdr);
  }
  UE_UNLOCK(ue);
  break;
 case 132:
 case 131:
  UE_LOCK(ue);
  ue_queue_command(ue, ue_setmulti_task,
      &ue->ue_multi_task[0].hdr,
      &ue->ue_multi_task[1].hdr);
  UE_UNLOCK(ue);
  break;
 case 130:
 case 128:
  if (ue->ue_miibus != ((void*)0)) {
   mii = device_get_softc(ue->ue_miibus);
   error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  } else
   error = ether_ioctl(ifp, command, data);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }
 return (error);
}
