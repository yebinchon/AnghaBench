
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; } ;
struct cfumass_softc {int dummy; } ;
typedef int device_t ;


 int CFUMASS_DEBUG (struct cfumass_softc*,char*) ;
 int CFUMASS_LOCK (struct cfumass_softc*) ;
 int CFUMASS_T_COMMAND ;
 int CFUMASS_UNLOCK (struct cfumass_softc*) ;
 int CFUMASS_WARN (struct cfumass_softc*,char*) ;
 int ENXIO ;
 scalar_t__ UR_GET_MAX_LUN ;
 scalar_t__ UR_RESET ;
 scalar_t__ UT_READ_CLASS_INTERFACE ;
 scalar_t__ UT_WRITE_CLASS_INTERFACE ;
 int cfumass_terminate (struct cfumass_softc*) ;
 int cfumass_transfer_start (struct cfumass_softc*,int ) ;
 struct cfumass_softc* device_get_softc (int ) ;
 int max_lun ;

__attribute__((used)) static int
cfumass_handle_request(device_t dev,
    const void *preq, void **pptr, uint16_t *plen,
    uint16_t offset, uint8_t *pstate)
{
 static uint8_t max_lun_tmp;
 struct cfumass_softc *sc;
 const struct usb_device_request *req;
 uint8_t is_complete;

 sc = device_get_softc(dev);
 req = preq;
 is_complete = *pstate;

 CFUMASS_DEBUG(sc, "go");

 if (is_complete)
  return (ENXIO);

 if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
     (req->bRequest == UR_RESET)) {
  CFUMASS_WARN(sc, "received Bulk-Only Mass Storage Reset");
  *plen = 0;

  CFUMASS_LOCK(sc);
  cfumass_terminate(sc);
  cfumass_transfer_start(sc, CFUMASS_T_COMMAND);
  CFUMASS_UNLOCK(sc);

  CFUMASS_DEBUG(sc, "Bulk-Only Mass Storage Reset done");
  return (0);
 }

 if ((req->bmRequestType == UT_READ_CLASS_INTERFACE) &&
     (req->bRequest == UR_GET_MAX_LUN)) {
  CFUMASS_DEBUG(sc, "received Get Max LUN");
  if (offset == 0) {
   *plen = 1;







   if (max_lun < 0 || max_lun > 15) {
    CFUMASS_WARN(sc,
        "invalid hw.usb.cfumass.max_lun, must be "
        "between 0 and 15; defaulting to 0");
    max_lun_tmp = 0;
   } else {
    max_lun_tmp = max_lun;
   }
   *pptr = &max_lun_tmp;
  } else {
   *plen = 0;
  }
  return (0);
 }

 return (ENXIO);
}
