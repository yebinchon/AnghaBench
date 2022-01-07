
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_device_request {int dummy; } ;
struct kue_softc {int sc_ue; } ;


 int uether_do_request (int *,struct usb_device_request*,void*,int) ;

__attribute__((used)) static int
kue_do_request(struct kue_softc *sc, struct usb_device_request *req,
    void *data)
{
 usb_error_t err;

 err = uether_do_request(&sc->sc_ue, req, data, 60000);

 return (err);
}
