
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxio_softc {int sc_flags; int sc_nauxio; int sc_dev; } ;
typedef int device_t ;


 int AUXIO_EBUS ;
 int AUXIO_LEDONLY ;
 int AUXIO_LOCK_INIT (struct auxio_softc*) ;
 int AUXIO_PCIO_NREG ;
 int auxio_attach_common (struct auxio_softc*) ;
 struct auxio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
auxio_ebus_attach(device_t dev)
{
 struct auxio_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 AUXIO_LOCK_INIT(sc);
 sc->sc_nauxio = AUXIO_PCIO_NREG;
 sc->sc_flags = AUXIO_LEDONLY | AUXIO_EBUS;

 return(auxio_attach_common(sc));
}
