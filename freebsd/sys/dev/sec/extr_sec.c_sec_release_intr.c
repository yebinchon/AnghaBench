
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int sc_dev; } ;
struct resource {int dummy; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_teardown_intr (int ,struct resource*,void*) ;
 int device_printf (int ,char*,char const*,int) ;

__attribute__((used)) static void
sec_release_intr(struct sec_softc *sc, struct resource *ires, void *ihand,
    int irid, const char *iname)
{
 int error;

 if (ires == ((void*)0))
  return;

 error = bus_teardown_intr(sc->sc_dev, ires, ihand);
 if (error)
  device_printf(sc->sc_dev, "bus_teardown_intr() failed for %s"
      " IRQ, error %d\n", iname, error);

 error = bus_release_resource(sc->sc_dev, SYS_RES_IRQ, irid, ires);
 if (error)
  device_printf(sc->sc_dev, "bus_release_resource() failed for %s"
      " IRQ, error %d\n", iname, error);
}
