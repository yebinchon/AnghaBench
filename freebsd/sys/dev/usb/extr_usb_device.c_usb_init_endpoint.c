
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t usb_stream_t ;
typedef int uint8_t ;
struct usb_endpoint_ss_comp_descriptor {int bmAttributes; } ;
struct usb_endpoint_descriptor {int bmAttributes; } ;
struct usb_endpoint {int * methods; TYPE_1__* endpoint_q; int iface_index; struct usb_endpoint_ss_comp_descriptor* ecomp; struct usb_endpoint_descriptor* edesc; } ;
struct usb_device {scalar_t__ speed; TYPE_2__* bus; } ;
struct usb_bus_methods {int (* clear_stall ) (struct usb_device*,struct usb_endpoint*) ;int (* endpoint_init ) (struct usb_device*,struct usb_endpoint_descriptor*,struct usb_endpoint*) ;} ;
struct TYPE_5__ {struct usb_bus_methods* methods; } ;
struct TYPE_4__ {int * command; int head; } ;


 int TAILQ_INIT (int *) ;
 int UE_BULK ;
 scalar_t__ UE_GET_BULK_STREAMS (int ) ;
 int UE_XFERTYPE ;
 int USB_BUS_LOCK (TYPE_2__*) ;
 int USB_BUS_UNLOCK (TYPE_2__*) ;
 int USB_EP_MODE_DEFAULT ;
 int USB_EP_MODE_STREAMS ;
 size_t USB_MAX_EP_STREAMS ;
 scalar_t__ USB_SPEED_SUPER ;
 int stub1 (struct usb_device*,struct usb_endpoint_descriptor*,struct usb_endpoint*) ;
 int stub2 (struct usb_device*,struct usb_endpoint*) ;
 int usbd_pipe_start ;
 int usbd_set_endpoint_mode (struct usb_device*,struct usb_endpoint*,int ) ;

__attribute__((used)) static void
usb_init_endpoint(struct usb_device *udev, uint8_t iface_index,
    struct usb_endpoint_descriptor *edesc,
    struct usb_endpoint_ss_comp_descriptor *ecomp,
    struct usb_endpoint *ep)
{
 const struct usb_bus_methods *methods;
 usb_stream_t x;

 methods = udev->bus->methods;

 (methods->endpoint_init) (udev, edesc, ep);


 ep->edesc = edesc;
 ep->ecomp = ecomp;
 ep->iface_index = iface_index;


 for (x = 0; x != USB_MAX_EP_STREAMS; x++) {
  TAILQ_INIT(&ep->endpoint_q[x].head);
  ep->endpoint_q[x].command = &usbd_pipe_start;
 }


  if (ep->methods == ((void*)0))
  return;


 if (udev->speed == USB_SPEED_SUPER && ecomp != ((void*)0) &&
     (edesc->bmAttributes & UE_XFERTYPE) == UE_BULK &&
     (UE_GET_BULK_STREAMS(ecomp->bmAttributes) != 0)) {
  usbd_set_endpoint_mode(udev, ep, USB_EP_MODE_STREAMS);
 } else {
  usbd_set_endpoint_mode(udev, ep, USB_EP_MODE_DEFAULT);
 }


 if (methods->clear_stall != ((void*)0)) {
  USB_BUS_LOCK(udev->bus);
  (methods->clear_stall) (udev, ep);
  USB_BUS_UNLOCK(udev->bus);
 }
}
