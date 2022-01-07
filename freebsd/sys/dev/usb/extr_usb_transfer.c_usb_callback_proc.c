
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int curr; } ;
struct usb_xfer_root {int xfer_mtx; TYPE_1__ done_q; int bus; } ;
struct usb_proc_msg {int dummy; } ;
struct usb_done_msg {struct usb_xfer_root* xroot; } ;


 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_MTX_LOCK (int ) ;
 int USB_MTX_UNLOCK (int ) ;
 int usb_command_wrapper (TYPE_1__*,int ) ;

__attribute__((used)) static void
usb_callback_proc(struct usb_proc_msg *_pm)
{
 struct usb_done_msg *pm = (void *)_pm;
 struct usb_xfer_root *info = pm->xroot;


 USB_BUS_UNLOCK(info->bus);





 USB_MTX_LOCK(info->xfer_mtx);
 USB_BUS_LOCK(info->bus);


 usb_command_wrapper(&info->done_q,
     info->done_q.curr);

 USB_MTX_UNLOCK(info->xfer_mtx);
}
