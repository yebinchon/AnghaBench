
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_proc_msg {int dummy; } ;
struct usb_ether_cfg_task {struct usb_ether* ue; } ;
struct usb_ether {int ue_watchdog; TYPE_1__* ue_methods; struct ifnet* ue_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int * ue_tick; int (* ue_init ) (struct usb_ether*) ;} ;


 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 int UE_LOCK_ASSERT (struct usb_ether*,int ) ;
 int hz ;
 int stub1 (struct usb_ether*) ;
 int ue_watchdog ;
 int usb_callout_reset (int *,int ,int ,struct usb_ether*) ;

__attribute__((used)) static void
ue_start_task(struct usb_proc_msg *_task)
{
 struct usb_ether_cfg_task *task =
     (struct usb_ether_cfg_task *)_task;
 struct usb_ether *ue = task->ue;
 struct ifnet *ifp = ue->ue_ifp;

 UE_LOCK_ASSERT(ue, MA_OWNED);

 ue->ue_methods->ue_init(ue);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 if (ue->ue_methods->ue_tick != ((void*)0))
  usb_callout_reset(&ue->ue_watchdog, hz, ue_watchdog, ue);
}
