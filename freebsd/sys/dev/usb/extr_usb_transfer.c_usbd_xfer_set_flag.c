
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int force_short_xfer; int short_xfer_ok; int short_frames_ok; int manual_status; } ;
struct usb_xfer {TYPE_1__ flags; } ;







void
usbd_xfer_set_flag(struct usb_xfer *xfer, int flag)
{
 switch (flag) {
  case 131:
   xfer->flags.force_short_xfer = 1;
   break;
  case 128:
   xfer->flags.short_xfer_ok = 1;
   break;
  case 129:
   xfer->flags.short_frames_ok = 1;
   break;
  case 130:
   xfer->flags.manual_status = 1;
   break;
 }
}
