
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_softc {int ih; int * res; void* bsh_d; void* bst_d; void* bsh; void* bst; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int CONTROL_GIEM ;
 int DMA_CONTROL ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int WRITE4 (struct msgdma_softc*,int ,int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct msgdma_softc*,int *) ;
 struct msgdma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int msgdma_intr ;
 scalar_t__ msgdma_reset (struct msgdma_softc*) ;
 int msgdma_spec ;
 int ofw_bus_get_node (int ) ;
 void* rman_get_bushandle (int ) ;
 void* rman_get_bustag (int ) ;

__attribute__((used)) static int
msgdma_attach(device_t dev)
{
 struct msgdma_softc *sc;
 phandle_t xref, node;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, msgdma_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);


 sc->bst_d = rman_get_bustag(sc->res[1]);
 sc->bsh_d = rman_get_bushandle(sc->res[1]);


 err = bus_setup_intr(dev, sc->res[2], INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), msgdma_intr, sc, &sc->ih);
 if (err) {
  device_printf(dev, "Unable to alloc interrupt resource.\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);
 xref = OF_xref_from_node(node);
 OF_device_register_xref(xref, dev);

 if (msgdma_reset(sc) != 0)
  return (-1);

 WRITE4(sc, DMA_CONTROL, CONTROL_GIEM);

 return (0);
}
