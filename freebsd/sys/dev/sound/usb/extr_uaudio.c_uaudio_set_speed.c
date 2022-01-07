
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;


 int DPRINTFN (int,char*,int,int) ;
 int SAMPLING_FREQ_CONTROL ;
 int SET_CUR ;
 int USETW (int ,int) ;
 int USETW2 (int ,int ,int ) ;
 int UT_WRITE_CLASS_ENDPOINT ;
 int usbd_do_request (struct usb_device*,int *,struct usb_device_request*,int*) ;

__attribute__((used)) static usb_error_t
uaudio_set_speed(struct usb_device *udev, uint8_t endpt, uint32_t speed)
{
 struct usb_device_request req;
 uint8_t data[3];

 DPRINTFN(6, "endpt=%d speed=%u\n", endpt, speed);

 req.bmRequestType = UT_WRITE_CLASS_ENDPOINT;
 req.bRequest = SET_CUR;
 USETW2(req.wValue, SAMPLING_FREQ_CONTROL, 0);
 USETW(req.wIndex, endpt);
 USETW(req.wLength, 3);
 data[0] = speed;
 data[1] = speed >> 8;
 data[2] = speed >> 16;

 return (usbd_do_request(udev, ((void*)0), &req, data));
}
