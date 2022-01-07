
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* rm_descr; void* rm_type; } ;
struct generic_pcie_core_softc {TYPE_1__ io_rman; TYPE_1__ mem_rman; int * res; int bsh; int bst; int dmat; scalar_t__ coherent; int dev; } ;
typedef int device_t ;


 int BUS_DMA_COHERENT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENXIO ;
 int RF_ACTIVE ;
 void* RMAN_ARRAY ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 struct generic_pcie_core_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_init (TYPE_1__*) ;

int
pci_host_generic_core_attach(device_t dev)
{
 struct generic_pcie_core_softc *sc;
 int error;
 int rid;

 sc = device_get_softc(dev);
 sc->dev = dev;


 error = bus_dma_tag_create(bus_get_dma_tag(dev),
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE,
     BUS_SPACE_UNRESTRICTED,
     BUS_SPACE_MAXSIZE,
     sc->coherent ? BUS_DMA_COHERENT : 0,
     ((void*)0), ((void*)0),
     &sc->dmat);
 if (error != 0)
  return (error);

 rid = 0;
 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->res == ((void*)0)) {
  device_printf(dev, "could not map memory.\n");
  return (ENXIO);
 }

 sc->bst = rman_get_bustag(sc->res);
 sc->bsh = rman_get_bushandle(sc->res);

 sc->mem_rman.rm_type = RMAN_ARRAY;
 sc->mem_rman.rm_descr = "PCIe Memory";
 sc->io_rman.rm_type = RMAN_ARRAY;
 sc->io_rman.rm_descr = "PCIe IO window";


 error = rman_init(&sc->mem_rman);
 if (error) {
  device_printf(dev, "rman_init() failed. error = %d\n", error);
  return (error);
 }

 error = rman_init(&sc->io_rman);
 if (error) {
  device_printf(dev, "rman_init() failed. error = %d\n", error);
  return (error);
 }

 return (0);
}
