
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct usb_device_request {int dummy; } ;
struct urtw_softc {int sc_mtx; int sc_udev; } ;


 int DPRINTF (struct urtw_softc*,int ,char*,int ) ;
 int URTW_ASSERT_LOCKED (struct urtw_softc*) ;
 int URTW_DEBUG_INIT ;
 int hz ;
 int usb_pause_mtx (int *,int) ;
 scalar_t__ usbd_do_request_flags (int ,int *,struct usb_device_request*,void*,int ,int *,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static usb_error_t
urtw_do_request(struct urtw_softc *sc,
    struct usb_device_request *req, void *data)
{
 usb_error_t err;
 int ntries = 10;

 URTW_ASSERT_LOCKED(sc);

 while (ntries--) {
  err = usbd_do_request_flags(sc->sc_udev, &sc->sc_mtx,
      req, data, 0, ((void*)0), 250 );
  if (err == 0)
   break;

  DPRINTF(sc, URTW_DEBUG_INIT,
      "Control request failed, %s (retrying)\n",
      usbd_errstr(err));
  usb_pause_mtx(&sc->sc_mtx, hz / 100);
 }
 return (err);
}
