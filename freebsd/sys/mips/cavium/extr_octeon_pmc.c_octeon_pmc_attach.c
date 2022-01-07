
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_pmc_softc {int * octeon_pmc_irq; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_MISC ;
 int OCTEON_PMC_IRQ ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 int bus_setup_intr (int ,int *,int ,int ,int *,struct octeon_pmc_softc*,int *) ;
 struct octeon_pmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int octeon_pmc_intr ;

__attribute__((used)) static int
octeon_pmc_attach(device_t dev)
{
 struct octeon_pmc_softc *sc;
 int error;
 int rid;

 sc = device_get_softc(dev);

 rid = 0;
 sc->octeon_pmc_irq = bus_alloc_resource(dev,
     SYS_RES_IRQ, &rid, OCTEON_PMC_IRQ,
     OCTEON_PMC_IRQ, 1, RF_ACTIVE);

 if (sc->octeon_pmc_irq == ((void*)0)) {
  device_printf(dev, "could not allocate irq%d\n", OCTEON_PMC_IRQ);
  return (ENXIO);
 }

 error = bus_setup_intr(dev, sc->octeon_pmc_irq,
     INTR_TYPE_MISC, octeon_pmc_intr, ((void*)0), sc, ((void*)0));
 if (error != 0) {
  device_printf(dev, "bus_setup_intr failed: %d\n", error);
  return (error);
 }

 return (0);
}
