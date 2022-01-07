
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_proc_msg {int dummy; } ;
struct usb_ether_cfg_task {struct usb_ether* ue; } ;
struct usb_ether {TYPE_1__* ue_methods; int ue_watchdog; } ;
struct TYPE_2__ {int (* ue_stop ) (struct usb_ether*) ;} ;


 int MA_OWNED ;
 int UE_LOCK_ASSERT (struct usb_ether*,int ) ;
 int stub1 (struct usb_ether*) ;
 int usb_callout_stop (int *) ;

__attribute__((used)) static void
ue_stop_task(struct usb_proc_msg *_task)
{
 struct usb_ether_cfg_task *task =
     (struct usb_ether_cfg_task *)_task;
 struct usb_ether *ue = task->ue;

 UE_LOCK_ASSERT(ue, MA_OWNED);

 usb_callout_stop(&ue->ue_watchdog);

 ue->ue_methods->ue_stop(ue);
}
