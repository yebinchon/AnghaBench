
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; } ;
struct cdce_softc {int sc_mtx; int * sc_xfer; int sc_notify_state; } ;
typedef int device_t ;


 size_t CDCE_INTR_TX ;
 int CDCE_NOTIFY_SPEED_CHANGE ;
 int ENXIO ;
 scalar_t__ UCDC_NCM_SET_ETHERNET_PACKET_FILTER ;
 scalar_t__ UT_WRITE_CLASS_INTERFACE ;
 struct cdce_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
cdce_handle_request(device_t dev,
    const void *preq, void **pptr, uint16_t *plen,
    uint16_t offset, uint8_t *pstate)
{
 struct cdce_softc *sc = device_get_softc(dev);
 const struct usb_device_request *req = preq;
 uint8_t is_complete = *pstate;





 if (req->bmRequestType == UT_WRITE_CLASS_INTERFACE && req->bRequest == UCDC_NCM_SET_ETHERNET_PACKET_FILTER) {


  if (is_complete == 1) {
   mtx_lock(&sc->sc_mtx);
   sc->sc_notify_state = CDCE_NOTIFY_SPEED_CHANGE;
   usbd_transfer_start(sc->sc_xfer[CDCE_INTR_TX]);
   mtx_unlock(&sc->sc_mtx);
  }

  return (0);
 }

 return (ENXIO);
}
