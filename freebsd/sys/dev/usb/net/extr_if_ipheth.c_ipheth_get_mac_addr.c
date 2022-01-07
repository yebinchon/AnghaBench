
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_request {scalar_t__* wLength; scalar_t__* wIndex; scalar_t__* wValue; int bRequest; int bmRequestType; } ;
struct TYPE_2__ {int ue_eaddr; int ue_udev; } ;
struct ipheth_softc {int sc_data; TYPE_1__ sc_ue; scalar_t__ sc_iface_no; } ;


 scalar_t__ ETHER_ADDR_LEN ;
 int IPHETH_CMD_GET_MACADDR ;
 int UT_READ_VENDOR_DEVICE ;
 int memcpy (int ,int ,scalar_t__) ;
 int usbd_do_request (int ,int *,struct usb_device_request*,int ) ;

__attribute__((used)) static int
ipheth_get_mac_addr(struct ipheth_softc *sc)
{
 struct usb_device_request req;
 int error;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = IPHETH_CMD_GET_MACADDR;
 req.wValue[0] = 0;
 req.wValue[1] = 0;
 req.wIndex[0] = sc->sc_iface_no;
 req.wIndex[1] = 0;
 req.wLength[0] = ETHER_ADDR_LEN;
 req.wLength[1] = 0;

 error = usbd_do_request(sc->sc_ue.ue_udev, ((void*)0), &req, sc->sc_data);

 if (error)
  return (error);

 memcpy(sc->sc_ue.ue_eaddr, sc->sc_data, ETHER_ADDR_LEN);

 return (0);
}
