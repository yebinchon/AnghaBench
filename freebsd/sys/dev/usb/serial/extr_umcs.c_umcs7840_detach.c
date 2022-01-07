
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct umcs7840_softc {int sc_numports; int sc_intr_xfer; TYPE_2__* sc_ucom; TYPE_1__* sc_ports; int sc_super_ucom; } ;
typedef int device_t ;
struct TYPE_4__ {size_t sc_portno; } ;
struct TYPE_3__ {int * sc_xfer; } ;


 int UMCS7840_N_TRANSFERS ;
 int device_claim_softc (int ) ;
 struct umcs7840_softc* device_get_softc (int ) ;
 int ucom_detach (int *,TYPE_2__*) ;
 int umcs7840_free_softc (struct umcs7840_softc*) ;
 int usbd_transfer_unsetup (int *,int) ;

__attribute__((used)) static int
umcs7840_detach(device_t dev)
{
 struct umcs7840_softc *sc = device_get_softc(dev);
 int subunit;

 ucom_detach(&sc->sc_super_ucom, sc->sc_ucom);

 for (subunit = 0; subunit < sc->sc_numports; ++subunit)
  usbd_transfer_unsetup(sc->sc_ports[sc->sc_ucom[subunit].sc_portno].sc_xfer, UMCS7840_N_TRANSFERS);
 usbd_transfer_unsetup(&sc->sc_intr_xfer, 1);

 device_claim_softc(dev);

 umcs7840_free_softc(sc);

 return (0);
}
