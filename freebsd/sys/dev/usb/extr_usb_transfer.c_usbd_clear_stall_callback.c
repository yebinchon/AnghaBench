
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_xfer {int* frlengths; int nframes; int error; int frbuffers; TYPE_3__* endpoint; TYPE_1__* xroot; } ;
struct usb_device_request {int wLength; int * wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef int req ;
struct TYPE_6__ {TYPE_2__* edesc; } ;
struct TYPE_5__ {int bEndpointAddress; } ;
struct TYPE_4__ {int udev; } ;


 int DPRINTF (char*) ;
 int MA_OWNED ;
 int UF_ENDPOINT_HALT ;
 int UR_CLEAR_FEATURE ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USB_XFER_LOCK_ASSERT (struct usb_xfer*,int ) ;
 int USETW (int ,int ) ;
 int UT_WRITE_ENDPOINT ;
 int usbd_clear_data_toggle (int ,TYPE_3__*) ;
 int usbd_copy_in (int ,int ,struct usb_device_request*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;

uint8_t
usbd_clear_stall_callback(struct usb_xfer *xfer1,
    struct usb_xfer *xfer2)
{
 struct usb_device_request req;

 if (xfer2 == ((void*)0)) {

  DPRINTF("NULL input parameter\n");
  return (0);
 }
 USB_XFER_LOCK_ASSERT(xfer1, MA_OWNED);
 USB_XFER_LOCK_ASSERT(xfer2, MA_OWNED);

 switch (USB_GET_STATE(xfer1)) {
 case 129:






  usbd_clear_data_toggle(xfer2->xroot->udev, xfer2->endpoint);



  req.bmRequestType = UT_WRITE_ENDPOINT;
  req.bRequest = UR_CLEAR_FEATURE;
  USETW(req.wValue, UF_ENDPOINT_HALT);
  req.wIndex[0] = xfer2->endpoint->edesc->bEndpointAddress;
  req.wIndex[1] = 0;
  USETW(req.wLength, 0);
  usbd_copy_in(xfer1->frbuffers, 0, &req, sizeof(req));


  xfer1->frlengths[0] = sizeof(req);
  xfer1->nframes = 1;

  usbd_transfer_submit(xfer1);
  return (0);

 case 128:
  break;

 default:
  if (xfer1->error == USB_ERR_CANCELLED) {
   return (0);
  }
  break;
 }
 return (1);
}
