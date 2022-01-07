
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int bst; int bsh; } ;
struct tsec_softc {int is_etsec; int * sc_rres; scalar_t__ sc_rrid; TYPE_1__ sc_bas; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TSEC_ETSEC_ID ;
 int TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_ID ;
 int TSEC_REG_ID2 ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct tsec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int * ofw_bus_get_type (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
tsec_fdt_probe(device_t dev)
{
 struct tsec_softc *sc;
 uint32_t id;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_get_type(dev) == ((void*)0) ||
     strcmp(ofw_bus_get_type(dev), "network") != 0)
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "gianfar") &&
     !ofw_bus_is_compatible(dev, "fsl,etsec2"))
  return (ENXIO);

 sc = device_get_softc(dev);





 if (ofw_bus_is_compatible(dev, "fsl,etsec2"))
  sc->is_etsec = 1;
 else {
  sc->sc_rrid = 0;
  sc->sc_rres = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rrid,
      RF_ACTIVE);
  if (sc->sc_rres == ((void*)0))
   return (ENXIO);

  sc->sc_bas.bsh = rman_get_bushandle(sc->sc_rres);
  sc->sc_bas.bst = rman_get_bustag(sc->sc_rres);


  id = TSEC_READ(sc, TSEC_REG_ID);
  sc->is_etsec = ((id >> 16) == TSEC_ETSEC_ID) ? 1 : 0;
  id |= TSEC_READ(sc, TSEC_REG_ID2);

  bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rrid, sc->sc_rres);

  if (id == 0) {
   device_printf(dev, "could not identify TSEC type\n");
   return (ENXIO);
  }
 }

 if (sc->is_etsec)
  device_set_desc(dev, "Enhanced Three-Speed Ethernet Controller");
 else
  device_set_desc(dev, "Three-Speed Ethernet Controller");

 return (BUS_PROBE_DEFAULT);
}
