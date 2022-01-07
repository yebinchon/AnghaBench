
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int data_error; } ;
struct ustorage_fs_softc {int sc_last_lun; int sc_mtx; TYPE_1__ sc_transfer; } ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ UR_BBB_GET_MAX_LUN ;
 scalar_t__ UR_BBB_RESET ;
 int USTORAGE_FS_T_BBB_COMMAND ;
 scalar_t__ UT_READ_CLASS_INTERFACE ;
 scalar_t__ UT_WRITE_CLASS_INTERFACE ;
 struct ustorage_fs_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ustorage_fs_transfer_start (struct ustorage_fs_softc*,int ) ;
 int ustorage_fs_transfer_stop (struct ustorage_fs_softc*) ;

__attribute__((used)) static int
ustorage_fs_handle_request(device_t dev,
    const void *preq, void **pptr, uint16_t *plen,
    uint16_t offset, uint8_t *pstate)
{
 struct ustorage_fs_softc *sc = device_get_softc(dev);
 const struct usb_device_request *req = preq;
 uint8_t is_complete = *pstate;

 if (!is_complete) {
  if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
      (req->bRequest == UR_BBB_RESET)) {
   *plen = 0;
   mtx_lock(&sc->sc_mtx);
   ustorage_fs_transfer_stop(sc);
   sc->sc_transfer.data_error = 1;
   ustorage_fs_transfer_start(sc,
       USTORAGE_FS_T_BBB_COMMAND);
   mtx_unlock(&sc->sc_mtx);
   return (0);
  } else if ((req->bmRequestType == UT_READ_CLASS_INTERFACE) &&
      (req->bRequest == UR_BBB_GET_MAX_LUN)) {
   if (offset == 0) {
    *plen = 1;
    *pptr = &sc->sc_last_lun;
   } else {
    *plen = 0;
   }
   return (0);
  }
 }
 return (ENXIO);
}
