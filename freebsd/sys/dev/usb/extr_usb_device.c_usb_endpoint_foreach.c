
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint {int * edesc; } ;
struct usb_device {int endpoints_max; struct usb_endpoint* endpoints; } ;



struct usb_endpoint *
usb_endpoint_foreach(struct usb_device *udev, struct usb_endpoint *ep)
{
 struct usb_endpoint *ep_end;


 if (udev == ((void*)0))
  return (((void*)0));

 ep_end = udev->endpoints + udev->endpoints_max;


 if (ep == ((void*)0))
  ep = udev->endpoints;
 else
  ep++;


 while (ep != ep_end) {
  if (ep->edesc != ((void*)0))
   return (ep);
  ep++;
 }
 return (((void*)0));
}
