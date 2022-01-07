
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_device {int dummy; } ;
struct usb_config_descriptor {int wTotalLength; } ;
struct mtx {int dummy; } ;


 int DPRINTFN (int,char*,int ) ;
 int UDESC_CONFIG ;
 scalar_t__ UGETW (int ) ;
 scalar_t__ USB_ERR_INVAL ;
 scalar_t__ usbd_req_get_desc (struct usb_device*,struct mtx*,int *,struct usb_config_descriptor*,int,int,int ,int ,int ,int ) ;

usb_error_t
usbd_req_get_config_desc(struct usb_device *udev, struct mtx *mtx,
    struct usb_config_descriptor *d, uint8_t conf_index)
{
 usb_error_t err;

 DPRINTFN(4, "confidx=%d\n", conf_index);

 err = usbd_req_get_desc(udev, mtx, ((void*)0), d, sizeof(*d),
     sizeof(*d), 0, UDESC_CONFIG, conf_index, 0);
 if (err) {
  goto done;
 }

 if (UGETW(d->wTotalLength) < (uint16_t)sizeof(*d)) {
  err = USB_ERR_INVAL;
 }
done:
 return (err);
}
