
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int dev; } ;
struct resource {int dummy; } ;
typedef int driver_intr_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_setup_intr (int ,struct resource*,int,int *,int ,struct tsec_softc*,void**) ;
 int device_printf (int ,char*,char const*) ;

__attribute__((used)) static int
tsec_setup_intr(struct tsec_softc *sc, struct resource **ires, void **ihand,
    int *irid, driver_intr_t handler, const char *iname)
{
 int error;

 *ires = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, irid, RF_ACTIVE);
 if (*ires == ((void*)0)) {
  device_printf(sc->dev, "could not allocate %s IRQ\n", iname);
  return (ENXIO);
 }
 error = bus_setup_intr(sc->dev, *ires, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), handler, sc, ihand);
 if (error) {
  device_printf(sc->dev, "failed to set up %s IRQ\n", iname);
  if (bus_release_resource(sc->dev, SYS_RES_IRQ, *irid, *ires))
   device_printf(sc->dev, "could not release %s IRQ\n", iname);
  *ires = ((void*)0);
  return (error);
 }
 return (0);
}
