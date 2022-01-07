
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdma_softc {int ih; int * res; int bsh; int bst; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int DMAC_AR ;
 int DMAC_DMAE ;
 int DMAC_HLT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int PDMA_DMAC ;
 int PDMA_DMACP ;
 int READ4 (struct pdma_softc*,int ) ;
 int WRITE4 (struct pdma_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct pdma_softc*,int *) ;
 struct pdma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int pdma_intr ;
 int pdma_spec ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
pdma_attach(device_t dev)
{
 struct pdma_softc *sc;
 phandle_t xref, node;
 int err;
 int reg;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, pdma_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);


 err = bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), pdma_intr, sc, &sc->ih);
 if (err) {
  device_printf(dev, "Unable to alloc interrupt resource.\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);
 xref = OF_xref_from_node(node);
 OF_device_register_xref(xref, dev);

 reg = READ4(sc, PDMA_DMAC);
 reg &= ~(DMAC_HLT | DMAC_AR);
 reg |= (DMAC_DMAE);
 WRITE4(sc, PDMA_DMAC, reg);

 WRITE4(sc, PDMA_DMACP, 0);

 return (0);
}
