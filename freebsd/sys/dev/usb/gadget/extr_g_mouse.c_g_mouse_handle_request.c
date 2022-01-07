
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wValue; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ UR_SET_PROTOCOL ;
 scalar_t__ UT_WRITE_CLASS_INTERFACE ;

__attribute__((used)) static int
g_mouse_handle_request(device_t dev,
    const void *preq, void **pptr, uint16_t *plen,
    uint16_t offset, uint8_t *pstate)
{
 const struct usb_device_request *req = preq;
 uint8_t is_complete = *pstate;

 if (!is_complete) {
  if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
      (req->bRequest == UR_SET_PROTOCOL) &&
      (req->wValue[0] == 0x00) &&
      (req->wValue[1] == 0x00)) {
   *plen = 0;
   return (0);
  }
 }
 return (ENXIO);
}
