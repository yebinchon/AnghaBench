
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_proc_callback_t ;
struct usb_proc_msg {int dummy; } ;
struct TYPE_2__ {int * pm_callback; } ;
struct usb_ether_cfg_task {struct usb_ether* ue; TYPE_1__ hdr; } ;
struct usb_ether {int ue_tq; } ;


 int MA_OWNED ;
 int UE_LOCK_ASSERT (struct usb_ether*,int ) ;
 int * ue_start_task ;
 int * ue_stop_task ;
 scalar_t__ usb_proc_is_gone (int *) ;
 scalar_t__ usb_proc_msignal (int *,struct usb_proc_msg*,struct usb_proc_msg*) ;
 int usb_proc_mwait (int *,struct usb_proc_msg*,struct usb_proc_msg*) ;

__attribute__((used)) static void
ue_queue_command(struct usb_ether *ue,
    usb_proc_callback_t *fn,
    struct usb_proc_msg *t0, struct usb_proc_msg *t1)
{
 struct usb_ether_cfg_task *task;

 UE_LOCK_ASSERT(ue, MA_OWNED);

 if (usb_proc_is_gone(&ue->ue_tq)) {
  return;
 }





 task = (struct usb_ether_cfg_task *)
   usb_proc_msignal(&ue->ue_tq, t0, t1);


 task->hdr.pm_callback = fn;
 task->ue = ue;




 if ((fn == ue_start_task) || (fn == ue_stop_task))
  usb_proc_mwait(&ue->ue_tq, t0, t1);
}
