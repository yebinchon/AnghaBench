
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {int ue_watchdog; TYPE_1__* ue_tick_task; struct ifnet* ue_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int hdr; } ;


 int IFF_DRV_RUNNING ;
 int hz ;
 int ue_queue_command (struct usb_ether*,int ,int *,int *) ;
 int ue_tick_task ;
 int usb_callout_reset (int *,int ,void (*) (void*),struct usb_ether*) ;

__attribute__((used)) static void
ue_watchdog(void *arg)
{
 struct usb_ether *ue = arg;
 struct ifnet *ifp = ue->ue_ifp;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 ue_queue_command(ue, ue_tick_task,
     &ue->ue_tick_task[0].hdr,
     &ue->ue_tick_task[1].hdr);

 usb_callout_reset(&ue->ue_watchdog, hz, ue_watchdog, ue);
}
