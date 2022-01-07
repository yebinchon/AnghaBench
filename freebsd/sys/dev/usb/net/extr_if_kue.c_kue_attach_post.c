
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_ether {int ue_eaddr; } ;
struct TYPE_4__ {int kue_macaddr; } ;
struct TYPE_3__ {int ue_dev; } ;
struct kue_softc {TYPE_2__ sc_desc; TYPE_1__ sc_ue; } ;


 int KUE_CMD_GET_ETHER_DESCRIPTOR ;
 int KUE_CTL_READ ;
 int device_printf (int ,char*) ;
 int kue_ctl (struct kue_softc*,int ,int ,int ,TYPE_2__*,int) ;
 int kue_load_fw (struct kue_softc*) ;
 int kue_reset (struct kue_softc*) ;
 int memcpy (int ,int ,int) ;
 struct kue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
kue_attach_post(struct usb_ether *ue)
{
 struct kue_softc *sc = uether_getsc(ue);
 int error;


 error = kue_load_fw(sc);
 if (error) {
  device_printf(sc->sc_ue.ue_dev, "could not load firmware\n");

 }


 kue_reset(sc);


 kue_ctl(sc, KUE_CTL_READ, KUE_CMD_GET_ETHER_DESCRIPTOR,
     0, &sc->sc_desc, sizeof(sc->sc_desc));


 memcpy(ue->ue_eaddr, sc->sc_desc.kue_macaddr, sizeof(ue->ue_eaddr));
}
