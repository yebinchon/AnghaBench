
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_proc_msg {int dummy; } ;
struct usb_ether_cfg_task {struct usb_ether* ue; } ;
struct usb_ether {TYPE_1__* ue_methods; } ;
struct TYPE_2__ {int (* ue_setpromisc ) (struct usb_ether*) ;} ;


 int stub1 (struct usb_ether*) ;

__attribute__((used)) static void
ue_promisc_task(struct usb_proc_msg *_task)
{
 struct usb_ether_cfg_task *task =
     (struct usb_ether_cfg_task *)_task;
 struct usb_ether *ue = task->ue;

 ue->ue_methods->ue_setpromisc(ue);
}
