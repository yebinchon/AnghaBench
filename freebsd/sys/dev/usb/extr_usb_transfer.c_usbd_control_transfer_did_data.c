
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ control_hdr; scalar_t__ control_rem; } ;
struct usb_xfer {TYPE_1__ flags_int; int frbuffers; } ;
struct usb_device_request {int wLength; } ;
typedef int req ;


 scalar_t__ UGETW (int ) ;
 int usbd_copy_out (int ,int ,struct usb_device_request*,int) ;

__attribute__((used)) static uint8_t
usbd_control_transfer_did_data(struct usb_xfer *xfer)
{
 struct usb_device_request req;


 if (xfer->flags_int.control_hdr != 0)
  return (0);


 usbd_copy_out(xfer->frbuffers, 0, &req, sizeof(req));


 return (xfer->flags_int.control_rem != UGETW(req.wLength));
}
