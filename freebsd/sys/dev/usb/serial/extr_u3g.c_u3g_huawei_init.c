
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;


 int UF_DEVICE_REMOTE_WAKEUP ;
 int UHF_PORT_SUSPEND ;
 int UR_SET_FEATURE ;
 int USB_MS_HZ ;
 int USETW (int ,int ) ;
 int UT_WRITE_DEVICE ;
 scalar_t__ usbd_do_request_flags (struct usb_device*,int *,struct usb_device_request*,int *,int ,int *,int ) ;

__attribute__((used)) static int
u3g_huawei_init(struct usb_device *udev)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_DEVICE;
 req.bRequest = UR_SET_FEATURE;
 USETW(req.wValue, UF_DEVICE_REMOTE_WAKEUP);
 USETW(req.wIndex, UHF_PORT_SUSPEND);
 USETW(req.wLength, 0);

 if (usbd_do_request_flags(udev, ((void*)0), &req,
     ((void*)0), 0, ((void*)0), USB_MS_HZ)) {

 }
 return (0);
}
