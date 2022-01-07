
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control_rem; } ;
struct usb_xfer {int endpointno; TYPE_1__ flags_int; int frbuffers; } ;
struct usb_device_request {int bmRequestType; int wLength; } ;
typedef int req ;


 int UE_DIR_IN ;
 int UE_DIR_OUT ;
 int UGETW (int ) ;
 int UT_READ ;
 int usbd_copy_out (int ,int ,struct usb_device_request*,int) ;

__attribute__((used)) static void
usbd_control_transfer_init(struct usb_xfer *xfer)
{
 struct usb_device_request req;



 usbd_copy_out(xfer->frbuffers, 0, &req, sizeof(req));



 xfer->flags_int.control_rem = UGETW(req.wLength);



 xfer->endpointno &= ~(UE_DIR_IN | UE_DIR_OUT);
 xfer->endpointno |=
     (req.bmRequestType & UT_READ) ? UE_DIR_IN : UE_DIR_OUT;
}
