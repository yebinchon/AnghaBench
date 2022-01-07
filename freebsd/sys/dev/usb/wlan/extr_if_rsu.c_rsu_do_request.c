
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct usb_device_request {int dummy; } ;
struct rsu_softc {int sc_mtx; int sc_udev; } ;


 int RSU_ASSERT_LOCKED (struct rsu_softc*) ;
 int RSU_DEBUG_USB ;
 int RSU_DPRINTF (struct rsu_softc*,int ,char*,int ,int) ;
 scalar_t__ USB_ERR_NOT_CONFIGURED ;
 int rsu_ms_delay (struct rsu_softc*,int) ;
 scalar_t__ usbd_do_request_flags (int ,int *,struct usb_device_request*,void*,int ,int *,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static usb_error_t
rsu_do_request(struct rsu_softc *sc, struct usb_device_request *req,
    void *data)
{
 usb_error_t err;
 int ntries = 10;

 RSU_ASSERT_LOCKED(sc);

 while (ntries--) {
  err = usbd_do_request_flags(sc->sc_udev, &sc->sc_mtx,
      req, data, 0, ((void*)0), 250 );
  if (err == 0 || err == USB_ERR_NOT_CONFIGURED)
   break;
  RSU_DPRINTF(sc, RSU_DEBUG_USB,
      "Control request failed, %s (retries left: %d)\n",
      usbd_errstr(err), ntries);
  rsu_ms_delay(sc, 10);
        }

        return (err);
}
