
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {TYPE_1__* ue_sync_task; int ue_tq; } ;
struct TYPE_2__ {int hdr; } ;


 int UE_LOCK (struct usb_ether*) ;
 int UE_UNLOCK (struct usb_ether*) ;
 int usb_proc_mwait (int *,int *,int *) ;

void
uether_ifattach_wait(struct usb_ether *ue)
{

 UE_LOCK(ue);
 usb_proc_mwait(&ue->ue_tq,
     &ue->ue_sync_task[0].hdr,
     &ue->ue_sync_task[1].hdr);
 UE_UNLOCK(ue);
}
