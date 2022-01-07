
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {TYPE_2__* bus; } ;
struct mtx {int dummy; } ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {scalar_t__ (* set_address ) (struct usb_device*,struct mtx*,int ) ;} ;


 int DPRINTFN (int,char*,int ) ;
 int UR_SET_ADDRESS ;
 int USB_DELAY_STATUS_STAGE ;
 scalar_t__ USB_ERR_INVAL ;
 int USB_MS_TO_TICKS (int ) ;
 int USETW (int ,int ) ;
 int UT_WRITE_DEVICE ;
 scalar_t__ stub1 (struct usb_device*,struct mtx*,int ) ;
 int usb_pause_mtx (struct mtx*,int ) ;
 int usb_set_address_settle ;
 scalar_t__ usbd_do_request_flags (struct usb_device*,struct mtx*,struct usb_device_request*,int *,int ,int *,int) ;

usb_error_t
usbd_req_set_address(struct usb_device *udev, struct mtx *mtx, uint16_t addr)
{
 struct usb_device_request req;
 usb_error_t err;

 DPRINTFN(6, "setting device address=%d\n", addr);

 req.bmRequestType = UT_WRITE_DEVICE;
 req.bRequest = UR_SET_ADDRESS;
 USETW(req.wValue, addr);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);

 err = USB_ERR_INVAL;


 if (udev->bus->methods->set_address != ((void*)0))
  err = (udev->bus->methods->set_address) (udev, mtx, addr);

 if (err != USB_ERR_INVAL)
  goto done;


 err = usbd_do_request_flags(udev, mtx, &req, ((void*)0),
     USB_DELAY_STATUS_STAGE, ((void*)0), 1000);

done:

 usb_pause_mtx(mtx,
     USB_MS_TO_TICKS(usb_set_address_settle));

 return (err);
}
