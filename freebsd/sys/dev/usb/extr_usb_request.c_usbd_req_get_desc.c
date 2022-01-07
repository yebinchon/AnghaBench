
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int DPRINTFN (int,char*,int,int,int,int) ;
 int UR_GET_DESCRIPTOR ;
 scalar_t__ USB_ERR_INVAL ;
 scalar_t__ USB_ERR_TIMEOUT ;
 int USB_SHORT_XFER_OK ;
 int USETW (int ,int) ;
 int USETW2 (int ,int,int) ;
 int UT_READ_DEVICE ;
 int hz ;
 int memset (void*,int ,int) ;
 int usb_pause_mtx (struct mtx*,int) ;
 scalar_t__ usbd_do_request_flags (struct usb_device*,struct mtx*,struct usb_device_request*,void*,int ,int *,int) ;

usb_error_t
usbd_req_get_desc(struct usb_device *udev,
    struct mtx *mtx, uint16_t *actlen, void *desc,
    uint16_t min_len, uint16_t max_len,
    uint16_t id, uint8_t type, uint8_t index,
    uint8_t retries)
{
 struct usb_device_request req;
 uint8_t *buf = desc;
 usb_error_t err;

 DPRINTFN(4, "id=%d, type=%d, index=%d, max_len=%d\n",
     id, type, index, max_len);

 req.bmRequestType = UT_READ_DEVICE;
 req.bRequest = UR_GET_DESCRIPTOR;
 USETW2(req.wValue, type, index);
 USETW(req.wIndex, id);

 while (1) {

  if ((min_len < 2) || (max_len < 2)) {
   err = USB_ERR_INVAL;
   goto done;
  }
  USETW(req.wLength, min_len);

  err = usbd_do_request_flags(udev, mtx, &req,
      desc, 0, ((void*)0), 500 );

  if (err != 0 && err != USB_ERR_TIMEOUT &&
      min_len != max_len) {

   memset(desc, 0, max_len);


   USETW(req.wLength, max_len);

   err = usbd_do_request_flags(udev, mtx, &req,
       desc, USB_SHORT_XFER_OK, ((void*)0), 500 );

   if (err == 0) {

    if (buf[0] > max_len)
     buf[0] = max_len;
    else if (buf[0] < 2)
     err = USB_ERR_INVAL;

    min_len = buf[0];


    buf[1] = type;
    goto done;
   }
  }

  if (err) {
   if (!retries) {
    goto done;
   }
   retries--;

   usb_pause_mtx(mtx, hz / 5);

   continue;
  }

  if (min_len == max_len) {


   if ((buf[0] > min_len) && (actlen == ((void*)0)))
    buf[0] = min_len;


   buf[1] = type;

   goto done;
  }


  if (max_len > buf[0]) {
   max_len = buf[0];
  }


  while (min_len > max_len) {
   min_len--;
   buf[min_len] = 0;
  }



  min_len = max_len;
 }
done:
 if (actlen != ((void*)0)) {
  if (err)
   *actlen = 0;
  else
   *actlen = min_len;
 }
 return (err);
}
