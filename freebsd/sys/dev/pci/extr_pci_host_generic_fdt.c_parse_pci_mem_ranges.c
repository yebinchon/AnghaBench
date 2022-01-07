
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct generic_pcie_core_softc {int nranges; TYPE_1__* ranges; } ;
typedef int size_cells ;
typedef int phandle_t ;
typedef int pci_addr_cells ;
typedef int pcell_t ;
typedef int parent_addr_cells ;
typedef int device_t ;
typedef int cell_t ;
struct TYPE_2__ {int pci_base; int phys_base; int size; int flags; } ;


 int ENXIO ;
 int FLAG_IO ;
 int FLAG_MEM ;
 int MAX_RANGES_TUPLES ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int OF_getencprop (int ,char*,int*,int) ;
 int OF_getproplen (int ,char*) ;
 int OF_parent (int ) ;
 int SPACE_CODE_IO_SPACE ;
 int SPACE_CODE_MASK ;
 int SPACE_CODE_SHIFT ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int free (int*,int ) ;
 int* malloc (int,int ,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
parse_pci_mem_ranges(device_t dev, struct generic_pcie_core_softc *sc)
{
 pcell_t pci_addr_cells, parent_addr_cells;
 pcell_t attributes, size_cells;
 cell_t *base_ranges;
 int nbase_ranges;
 phandle_t node;
 int i, j, k;
 int tuple;

 node = ofw_bus_get_node(dev);

 OF_getencprop(node, "#address-cells", &pci_addr_cells,
     sizeof(pci_addr_cells));
 OF_getencprop(node, "#size-cells", &size_cells,
     sizeof(size_cells));
 OF_getencprop(OF_parent(node), "#address-cells", &parent_addr_cells,
     sizeof(parent_addr_cells));

 if (parent_addr_cells > 2 || pci_addr_cells != 3 || size_cells > 2) {
  device_printf(dev,
      "Unexpected number of address or size cells in FDT\n");
  return (ENXIO);
 }

 nbase_ranges = OF_getproplen(node, "ranges");
 sc->nranges = nbase_ranges / sizeof(cell_t) /
     (parent_addr_cells + pci_addr_cells + size_cells);
 base_ranges = malloc(nbase_ranges, M_DEVBUF, M_WAITOK);
 OF_getencprop(node, "ranges", base_ranges, nbase_ranges);

 for (i = 0, j = 0; i < sc->nranges; i++) {
  attributes = (base_ranges[j++] >> SPACE_CODE_SHIFT) & SPACE_CODE_MASK;

  if (attributes == SPACE_CODE_IO_SPACE) {
   sc->ranges[i].flags |= FLAG_IO;
  } else {
   sc->ranges[i].flags |= FLAG_MEM;
  }

  sc->ranges[i].pci_base = 0;
  for (k = 0; k < (pci_addr_cells - 1); k++) {
   sc->ranges[i].pci_base <<= 32;
   sc->ranges[i].pci_base |= base_ranges[j++];
  }
  sc->ranges[i].phys_base = 0;
  for (k = 0; k < parent_addr_cells; k++) {
   sc->ranges[i].phys_base <<= 32;
   sc->ranges[i].phys_base |= base_ranges[j++];
  }
  sc->ranges[i].size = 0;
  for (k = 0; k < size_cells; k++) {
   sc->ranges[i].size <<= 32;
   sc->ranges[i].size |= base_ranges[j++];
  }
 }

 for (; i < MAX_RANGES_TUPLES; i++) {

  sc->ranges[i].pci_base = 0;
  sc->ranges[i].phys_base = 0;
  sc->ranges[i].size = 0;
 }

 if (bootverbose) {
  for (tuple = 0; tuple < MAX_RANGES_TUPLES; tuple++) {
   device_printf(dev,
       "\tPCI addr: 0x%jx, CPU addr: 0x%jx, Size: 0x%jx\n",
       sc->ranges[tuple].pci_base,
       sc->ranges[tuple].phys_base,
       sc->ranges[tuple].size);
  }
 }

 free(base_ranges, M_DEVBUF);
 return (0);
}
