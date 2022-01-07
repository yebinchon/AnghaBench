
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {TYPE_1__* ue_sync_task; } ;
struct TYPE_2__ {int hdr; } ;


 int UE_LOCK (struct usb_ether*) ;
 int UE_UNLOCK (struct usb_ether*) ;
 int ue_queue_command (struct usb_ether*,int ,int *,int *) ;
 int ue_start_task ;

__attribute__((used)) static void
ue_init(void *arg)
{
 struct usb_ether *ue = arg;

 UE_LOCK(ue);
 ue_queue_command(ue, ue_start_task,
     &ue->ue_sync_task[0].hdr,
     &ue->ue_sync_task[1].hdr);
 UE_UNLOCK(ue);
}
