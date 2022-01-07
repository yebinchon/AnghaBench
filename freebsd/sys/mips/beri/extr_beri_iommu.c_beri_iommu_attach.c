
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beri_iommu_softc {int * res; int bsh_data; int bst_data; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int beri_iommu_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct beri_iommu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
beri_iommu_attach(device_t dev)
{
 struct beri_iommu_softc *sc;
 phandle_t xref, node;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, beri_iommu_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst_data = rman_get_bustag(sc->res[0]);
 sc->bsh_data = rman_get_bushandle(sc->res[0]);

 node = ofw_bus_get_node(dev);
 xref = OF_xref_from_node(node);
 OF_device_register_xref(xref, dev);

 return (0);
}
