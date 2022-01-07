
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl330_softc {int * ih; int ** res; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int PL330_NCHANNELS ;
 scalar_t__ bus_alloc_resources (int ,int ,int **) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct pl330_softc*,int ) ;
 struct pl330_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int pl330_intr ;
 int pl330_spec ;

__attribute__((used)) static int
pl330_attach(device_t dev)
{
 struct pl330_softc *sc;
 phandle_t xref, node;
 int err;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, pl330_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }


 for (i = 0; i < PL330_NCHANNELS; i++) {
  if (sc->res[i + 1] == ((void*)0))
   break;
  err = bus_setup_intr(dev, sc->res[i + 1], INTR_TYPE_MISC | INTR_MPSAFE,
      ((void*)0), pl330_intr, sc, sc->ih[i]);
  if (err) {
   device_printf(dev, "Unable to alloc interrupt resource.\n");
   return (ENXIO);
  }
 }

 node = ofw_bus_get_node(dev);
 xref = OF_xref_from_node(node);
 OF_device_register_xref(xref, dev);

 return (0);
}
