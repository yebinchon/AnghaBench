
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct ugensa_softc {size_t sc_nports; TYPE_1__* sc_sub; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;
struct TYPE_2__ {int sc_xfer; } ;


 int UGENSA_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct ugensa_softc* device_get_softc (int ) ;
 int ucom_detach (int *,int ) ;
 int ugensa_free_softc (struct ugensa_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
ugensa_detach(device_t dev)
{
 struct ugensa_softc *sc = device_get_softc(dev);
 uint8_t x;

 ucom_detach(&sc->sc_super_ucom, sc->sc_ucom);

 for (x = 0; x < sc->sc_nports; x++) {
  usbd_transfer_unsetup(sc->sc_sub[x].sc_xfer, UGENSA_N_TRANSFER);
 }

 device_claim_softc(dev);

 ugensa_free_softc(sc);

 return (0);
}
