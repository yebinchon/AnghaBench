
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quicc_softc {int sc_rres; int sc_rrid; int sc_rtype; int sc_ires; int sc_irid; int sc_icookie; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct quicc_softc* device_get_softc (int ) ;

int
quicc_bfe_detach(device_t dev)
{
 struct quicc_softc *sc;

 sc = device_get_softc(dev);

 bus_teardown_intr(dev, sc->sc_ires, sc->sc_icookie);
 bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irid, sc->sc_ires);
 bus_release_resource(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);
 return (0);
}
