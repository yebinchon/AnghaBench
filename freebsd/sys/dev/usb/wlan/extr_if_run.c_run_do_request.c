
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct usb_device_request {int dummy; } ;
struct run_softc {int sc_mtx; int sc_udev; } ;


 int MA_OWNED ;
 int RUN_DEBUG_USB ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,int ) ;
 int RUN_LOCK_ASSERT (struct run_softc*,int ) ;
 int run_delay (struct run_softc*,int) ;
 scalar_t__ usbd_do_request_flags (int ,int *,struct usb_device_request*,void*,int ,int *,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static usb_error_t
run_do_request(struct run_softc *sc,
    struct usb_device_request *req, void *data)
{
 usb_error_t err;
 int ntries = 10;

 RUN_LOCK_ASSERT(sc, MA_OWNED);

 while (ntries--) {
  err = usbd_do_request_flags(sc->sc_udev, &sc->sc_mtx,
      req, data, 0, ((void*)0), 250 );
  if (err == 0)
   break;
  RUN_DPRINTF(sc, RUN_DEBUG_USB,
      "Control request failed, %s (retrying)\n",
      usbd_errstr(err));
  run_delay(sc, 10);
 }
 return (err);
}
