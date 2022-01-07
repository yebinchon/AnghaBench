
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct uhid_softc {int sc_iface_index; int sc_udev; } ;


 int ENOMEM ;
 int ENXIO ;
 int M_USBDEV ;
 int M_WAITOK ;
 int copyout (void*,void*,int ) ;
 int free (void*,int ) ;
 void* malloc (int ,int ,int ) ;
 int usbd_req_get_report (int ,int *,void*,int ,int ,int,int) ;

__attribute__((used)) static int
uhid_get_report(struct uhid_softc *sc, uint8_t type,
    uint8_t id, void *kern_data, void *user_data,
    uint16_t len)
{
 int err;
 uint8_t free_data = 0;

 if (kern_data == ((void*)0)) {
  kern_data = malloc(len, M_USBDEV, M_WAITOK);
  if (kern_data == ((void*)0)) {
   err = ENOMEM;
   goto done;
  }
  free_data = 1;
 }
 err = usbd_req_get_report(sc->sc_udev, ((void*)0), kern_data,
     len, sc->sc_iface_index, type, id);
 if (err) {
  err = ENXIO;
  goto done;
 }
 if (user_data) {

  err = copyout(kern_data, user_data, len);
  if (err) {
   goto done;
  }
 }
done:
 if (free_data) {
  free(kern_data, M_USBDEV);
 }
 return (err);
}
