
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_espi_softc {int sc_num_cs; int sc_mtx; void* sc_mem_res; void* sc_irq_res; int sc_intrhand; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int ESPI_SPIM ;
 int ESPI_SPMODE ;
 int ESPI_SPMODE_EN ;
 int ESPI_SPMODE_RXTHR_S ;
 int ESPI_SPMODE_TXTHR_S ;
 int FSL_ESPI_WRITE (struct fsl_espi_softc*,int ,int) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,void*) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct fsl_espi_softc*,int *) ;
 int device_add_child (int ,char*,int) ;
 struct fsl_espi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fsl_espi_intr ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
fsl_espi_attach(device_t dev)
{
 struct fsl_espi_softc *sc;
 int rid;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 node = ofw_bus_get_node(dev);

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory resource\n");
  return (ENXIO);
 }

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot allocate interrupt\n");
  return (ENXIO);
 }


 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), fsl_espi_intr, sc, &sc->sc_intrhand)) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot setup the interrupt handler\n");
  return (ENXIO);
 }
 if (OF_getencprop(node, "fsl,espi-num-chipselects",
     &sc->sc_num_cs, sizeof(sc->sc_num_cs)) < 0 )
  sc->sc_num_cs = 4;

 mtx_init(&sc->sc_mtx, "fsl_espi", ((void*)0), MTX_DEF);


 FSL_ESPI_WRITE(sc, ESPI_SPMODE, ESPI_SPMODE_EN |
     (16 << ESPI_SPMODE_TXTHR_S) | (15 << ESPI_SPMODE_RXTHR_S));


 FSL_ESPI_WRITE(sc, ESPI_SPIM, 0);

 device_add_child(dev, "spibus", -1);

 return (bus_generic_attach(dev));
}
