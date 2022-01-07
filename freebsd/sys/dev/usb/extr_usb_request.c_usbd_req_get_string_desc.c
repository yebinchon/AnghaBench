
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int UDESC_STRING ;
 int usbd_req_get_desc (struct usb_device*,struct mtx*,int *,void*,int,int ,int ,int ,int ,int ) ;

usb_error_t
usbd_req_get_string_desc(struct usb_device *udev, struct mtx *mtx, void *sdesc,
    uint16_t max_len, uint16_t lang_id,
    uint8_t string_index)
{
 return (usbd_req_get_desc(udev, mtx, ((void*)0), sdesc, 2, max_len, lang_id,
     UDESC_STRING, string_index, 0));
}
