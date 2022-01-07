
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct usb_cdc_abstract_state {int wState; } ;


 int DPRINTF (char*,int ,int ) ;
 int UCDC_ABSTRACT_STATE_LENGTH ;
 int UCDC_SET_COMM_FEATURE ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int usbd_do_request (struct usb_device*,int *,struct usb_device_request*,struct usb_cdc_abstract_state*) ;

__attribute__((used)) static usb_error_t
umodem_set_comm_feature(struct usb_device *udev, uint8_t iface_no,
    uint16_t feature, uint16_t state)
{
 struct usb_device_request req;
 struct usb_cdc_abstract_state ast;

 DPRINTF("feature=%d state=%d\n",
     feature, state);

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_COMM_FEATURE;
 USETW(req.wValue, feature);
 req.wIndex[0] = iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, UCDC_ABSTRACT_STATE_LENGTH);
 USETW(ast.wState, state);

 return (usbd_do_request(udev, ((void*)0), &req, &ast));
}
