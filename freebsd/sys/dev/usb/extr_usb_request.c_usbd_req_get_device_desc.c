
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_device_descriptor {int dummy; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int DPRINTFN (int,char*) ;
 int UDESC_DEVICE ;
 int usbd_req_get_desc (struct usb_device*,struct mtx*,int *,struct usb_device_descriptor*,int,int,int ,int ,int ,int) ;

usb_error_t
usbd_req_get_device_desc(struct usb_device *udev, struct mtx *mtx,
    struct usb_device_descriptor *d)
{
 DPRINTFN(4, "\n");
 return (usbd_req_get_desc(udev, mtx, ((void*)0), d, sizeof(*d),
     sizeof(*d), 0, UDESC_DEVICE, 0, 3));
}
