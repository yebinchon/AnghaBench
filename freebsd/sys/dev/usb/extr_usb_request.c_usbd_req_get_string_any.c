
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ no_strings; } ;
struct usb_device {int langid; TYPE_1__ flags; } ;
struct mtx {int dummy; } ;


 int UGETW (scalar_t__*) ;
 scalar_t__ USB_ERR_INVAL ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 scalar_t__ USB_ERR_STALLED ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ usbd_req_get_string_desc (struct usb_device*,struct mtx*,char*,int,int ,scalar_t__) ;

usb_error_t
usbd_req_get_string_any(struct usb_device *udev, struct mtx *mtx, char *buf,
    uint16_t len, uint8_t string_index)
{
 char *s;
 uint8_t *temp;
 uint16_t i;
 uint16_t n;
 uint16_t c;
 uint8_t swap;
 usb_error_t err;

 if (len == 0) {

  return (USB_ERR_NORMAL_COMPLETION);
 }
 if (string_index == 0) {

  buf[0] = 0;
  return (USB_ERR_INVAL);
 }
 if (udev->flags.no_strings) {
  buf[0] = 0;
  return (USB_ERR_STALLED);
 }
 err = usbd_req_get_string_desc
     (udev, mtx, buf, len, udev->langid, string_index);
 if (err) {
  buf[0] = 0;
  return (err);
 }
 temp = (uint8_t *)buf;

 if (temp[0] < 2) {

  buf[0] = 0;
  return (USB_ERR_INVAL);
 }

 len--;


 s = buf;
 n = (temp[0] / 2) - 1;
 if (n > len) {
  n = len;
 }

 temp += 2;


 swap = 3;


 for (i = 0; (i != n); i++) {
  c = UGETW(temp + (2 * i));


  if (((c & 0xff00) == 0) && (swap & 1)) {

   *s = c;
   swap = 1;
  } else if (((c & 0x00ff) == 0) && (swap & 2)) {

   *s = c >> 8;
   swap = 2;
  } else {

   continue;
  }






  if (isalpha(*s) ||
      isdigit(*s) ||
      *s == '-' ||
      *s == '+' ||
      *s == ' ' ||
      *s == '.' ||
      *s == ',' ||
      *s == ':' ||
      *s == '/' ||
      *s == '(' ||
      *s == ')') {

   s++;
  }

 }
 *s = 0;
 return (USB_ERR_NORMAL_COMPLETION);
}
