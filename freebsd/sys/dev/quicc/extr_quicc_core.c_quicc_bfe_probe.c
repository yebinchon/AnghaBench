
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct quicc_softc {int * sc_rres; scalar_t__ sc_rrid; int sc_rtype; int sc_clock; int sc_dev; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int QUICC_PRAM_REV_NUM ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int * device_get_desc (int ) ;
 struct quicc_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int quicc_read2 (int *,int ) ;

int
quicc_bfe_probe(device_t dev, u_int clock)
{
 struct quicc_softc *sc;
 uint16_t rev;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 if (device_get_desc(dev) == ((void*)0))
  device_set_desc(dev,
      "Quad integrated communications controller");

 sc->sc_rrid = 0;
 sc->sc_rtype = SYS_RES_MEMORY;
 sc->sc_rres = bus_alloc_resource_any(dev, sc->sc_rtype, &sc->sc_rrid,
     RF_ACTIVE);
 if (sc->sc_rres == ((void*)0)) {
  sc->sc_rrid = 0;
  sc->sc_rtype = SYS_RES_IOPORT;
  sc->sc_rres = bus_alloc_resource_any(dev, sc->sc_rtype,
      &sc->sc_rrid, RF_ACTIVE);
  if (sc->sc_rres == ((void*)0))
   return (ENXIO);
 }

 sc->sc_clock = clock;






 rev = quicc_read2(sc->sc_rres, QUICC_PRAM_REV_NUM);

 bus_release_resource(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);
 return ((rev == 0x00e8) ? BUS_PROBE_DEFAULT : ENXIO);
}
