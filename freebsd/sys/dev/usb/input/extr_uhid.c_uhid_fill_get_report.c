
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;


 int UR_GET_REPORT ;
 int USETW (int ,int ) ;
 int USETW2 (int ,scalar_t__,scalar_t__) ;
 int UT_READ_CLASS_INTERFACE ;

__attribute__((used)) static void
uhid_fill_get_report(struct usb_device_request *req, uint8_t iface_no,
    uint8_t type, uint8_t id, uint16_t size)
{
 req->bmRequestType = UT_READ_CLASS_INTERFACE;
 req->bRequest = UR_GET_REPORT;
 USETW2(req->wValue, type, id);
 req->wIndex[0] = iface_no;
 req->wIndex[1] = 0;
 USETW(req->wLength, size);
}
