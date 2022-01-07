
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct usb_config_descriptor {int bConfigurationValue; } ;
struct TYPE_2__ {int ue_udev; } ;
struct axge_softc {TYPE_1__ sc_ue; int sc_mtx; } ;


 int DPRINTF (char*) ;
 int axge_chip_init (struct axge_softc*) ;
 int hz ;
 int uether_pause (TYPE_1__*,int) ;
 struct usb_config_descriptor* usbd_get_config_descriptor (int ) ;
 scalar_t__ usbd_req_set_config (int ,int *,int ) ;

__attribute__((used)) static void
axge_reset(struct axge_softc *sc)
{
 struct usb_config_descriptor *cd;
 usb_error_t err;

 cd = usbd_get_config_descriptor(sc->sc_ue.ue_udev);

 err = usbd_req_set_config(sc->sc_ue.ue_udev, &sc->sc_mtx,
     cd->bConfigurationValue);
 if (err)
  DPRINTF("reset failed (ignored)\n");


 uether_pause(&sc->sc_ue, hz / 100);


 axge_chip_init(sc);
}
