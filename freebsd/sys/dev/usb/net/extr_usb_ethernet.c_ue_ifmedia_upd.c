
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {TYPE_1__* ue_media_task; } ;
struct ifnet {struct usb_ether* if_softc; } ;
struct TYPE_2__ {int hdr; } ;


 int UE_LOCK (struct usb_ether*) ;
 int UE_UNLOCK (struct usb_ether*) ;
 int ue_ifmedia_task ;
 int ue_queue_command (struct usb_ether*,int ,int *,int *) ;

__attribute__((used)) static int
ue_ifmedia_upd(struct ifnet *ifp)
{
 struct usb_ether *ue = ifp->if_softc;


 UE_LOCK(ue);
 ue_queue_command(ue, ue_ifmedia_task,
     &ue->ue_media_task[0].hdr,
     &ue->ue_media_task[1].hdr);
 UE_UNLOCK(ue);

 return (0);
}
