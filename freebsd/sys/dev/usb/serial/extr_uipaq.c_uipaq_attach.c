
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_attach_arg {int device; } ;
struct uipaq_softc {int sc_super_ucom; int sc_mtx; int sc_ucom; int * sc_xfer; int sc_udev; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int UCDC_LINE_DTR ;
 int UCDC_SET_CONTROL_LINE_STATE ;
 size_t UIPAQ_BULK_DT_RD ;
 size_t UIPAQ_BULK_DT_WR ;
 int UIPAQ_IFACE_INDEX ;
 int UIPAQ_N_TRANSFER ;
 int USETW (int ,int) ;
 int UT_WRITE_CLASS_INTERFACE ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uipaq_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int hz ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_attach (int *,int *,int,struct uipaq_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int uipaq_callback ;
 int uipaq_config_data ;
 int uipaq_detach (int ) ;
 int usb_pause_mtx (int *,int) ;
 int usbd_do_request_flags (int ,int *,struct usb_device_request*,int *,int ,int *,int) ;
 int usbd_transfer_setup (int ,int*,int *,int ,int ,struct uipaq_softc*,int *) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
uipaq_attach(device_t dev)
{
 struct usb_device_request req;
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct uipaq_softc *sc = device_get_softc(dev);
 int error;
 uint8_t iface_index;
 uint8_t i;

 sc->sc_udev = uaa->device;

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "uipaq", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);






 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_CONTROL_LINE_STATE;
 USETW(req.wValue, UCDC_LINE_DTR);
 USETW(req.wIndex, 0x0);
 USETW(req.wLength, 0);
 for (i = 0; i != 64; i++) {
  error =
      usbd_do_request_flags(uaa->device, ((void*)0), &req,
      ((void*)0), 0, ((void*)0), 100);
  if (error == 0)
   break;
  usb_pause_mtx(((void*)0), hz / 10);
 }

 iface_index = UIPAQ_IFACE_INDEX;
 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, uipaq_config_data,
     UIPAQ_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  goto detach;
 }

 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[UIPAQ_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[UIPAQ_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &uipaq_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 uipaq_detach(dev);
 return (ENXIO);
}
