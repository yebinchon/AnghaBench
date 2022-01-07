
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ufoma_softc {int sc_mtx; int sc_cv; int * sc_modetable; int sc_ucom; int sc_udev; int sc_ctrl_iface_no; } ;
typedef scalar_t__ int32_t ;


 int DPRINTF (char*) ;
 int UMCPC_CM_MOBILE_ACM ;
 int UMCPC_SET_LINK ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_INTERFACE ;
 scalar_t__ cv_timedwait (int *,int *,int ) ;
 int hz ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
ufoma_cfg_link_state(struct ufoma_softc *sc)
{
 struct usb_device_request req;
 int32_t error;

 req.bmRequestType = UT_WRITE_VENDOR_INTERFACE;
 req.bRequest = UMCPC_SET_LINK;
 USETW(req.wValue, UMCPC_CM_MOBILE_ACM);
 USETW(req.wIndex, sc->sc_ctrl_iface_no);
 USETW(req.wLength, sc->sc_modetable[0]);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, sc->sc_modetable, 0, 1000);

 error = cv_timedwait(&sc->sc_cv, &sc->sc_mtx, hz);

 if (error) {
  DPRINTF("NO response\n");
 }
}
