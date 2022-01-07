
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intelspi_softc {int * sc_irq_res; scalar_t__ sc_irq_rid; int * sc_mem_res; scalar_t__ sc_mem_rid; int sc_irq_ih; int sc_dev; int sc_handle; } ;
typedef int device_t ;


 int ENXIO ;
 int INTELSPI_LOCK_DESTROY (struct intelspi_softc*) ;
 int INTELSPI_LOCK_INIT (struct intelspi_softc*) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int acpi_get_handle (int ) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct intelspi_softc*,int *) ;
 int device_add_child (int ,char*,int) ;
 struct intelspi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int intelspi_init (struct intelspi_softc*) ;
 int intelspi_intr ;

__attribute__((used)) static int
intelspi_attach(device_t dev)
{
 struct intelspi_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_handle = acpi_get_handle(dev);

 INTELSPI_LOCK_INIT(sc);

 sc->sc_mem_rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(sc->sc_dev,
     SYS_RES_MEMORY, &sc->sc_mem_rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "can't allocate memory resource\n");
  goto error;
 }

 sc->sc_irq_rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(sc->sc_dev,
     SYS_RES_IRQ, &sc->sc_irq_rid, RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "can't allocate IRQ resource\n");
  goto error;
 }


 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), intelspi_intr, sc, &sc->sc_irq_ih)) {
  device_printf(dev, "cannot setup the interrupt handler\n");
  goto error;
 }

 intelspi_init(sc);

 device_add_child(dev, "spibus", -1);

 return (bus_generic_attach(dev));

error:
 INTELSPI_LOCK_DESTROY(sc);

 if (sc->sc_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_mem_rid, sc->sc_mem_res);

 if (sc->sc_irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ,
      sc->sc_irq_rid, sc->sc_irq_res);

 return (ENXIO);
}
