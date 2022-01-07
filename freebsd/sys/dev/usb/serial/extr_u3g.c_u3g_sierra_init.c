
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;


 int UF_DEVICE_REMOTE_WAKEUP ;
 int UHF_PORT_CONNECTION ;
 int UR_SET_INTERFACE ;
 int USB_MS_HZ ;
 int USETW (int ,int ) ;
 int UT_VENDOR ;
 scalar_t__ usbd_do_request_flags (struct usb_device*,int *,struct usb_device_request*,int *,int ,int *,int ) ;

__attribute__((used)) static int
u3g_sierra_init(struct usb_device *udev)
{
 struct usb_device_request req;

 req.bmRequestType = UT_VENDOR;
 req.bRequest = UR_SET_INTERFACE;
 USETW(req.wValue, UF_DEVICE_REMOTE_WAKEUP);
 USETW(req.wIndex, UHF_PORT_CONNECTION);
 USETW(req.wLength, 0);

 if (usbd_do_request_flags(udev, ((void*)0), &req,
     ((void*)0), 0, ((void*)0), USB_MS_HZ)) {

 }
 return (0);
}
