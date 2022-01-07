
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pci_range {int pci_hi; int pci; int host; int size; } ;
typedef int ssize_t ;
typedef int size_cells ;
typedef int phandle_t ;
typedef int pci_address_cells ;
typedef int host_address_cells ;
typedef int cell_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int OF_getencprop (int ,char*,int*,int) ;
 int OF_getproplen (int ,char*) ;
 int OF_parent (int ) ;
 int free (int*,int ) ;
 int* malloc (int,int ,int ) ;

__attribute__((used)) static int
ofw_pci_fill_ranges(phandle_t node, struct ofw_pci_range *ranges)
{
 int host_address_cells = 1, pci_address_cells = 3, size_cells = 2;
 cell_t *base_ranges;
 ssize_t nbase_ranges;
 int nranges;
 int i, j, k;

 OF_getencprop(OF_parent(node), "#address-cells", &host_address_cells,
     sizeof(host_address_cells));
 OF_getencprop(node, "#address-cells", &pci_address_cells,
     sizeof(pci_address_cells));
 OF_getencprop(node, "#size-cells", &size_cells, sizeof(size_cells));

 nbase_ranges = OF_getproplen(node, "ranges");
 if (nbase_ranges <= 0)
  return (-1);
 nranges = nbase_ranges / sizeof(cell_t) /
     (pci_address_cells + host_address_cells + size_cells);

 base_ranges = malloc(nbase_ranges, M_DEVBUF, M_WAITOK);
 OF_getencprop(node, "ranges", base_ranges, nbase_ranges);

 for (i = 0, j = 0; i < nranges; i++) {
  ranges[i].pci_hi = base_ranges[j++];
  ranges[i].pci = 0;
  for (k = 0; k < pci_address_cells - 1; k++) {
   ranges[i].pci <<= 32;
   ranges[i].pci |= base_ranges[j++];
  }
  ranges[i].host = 0;
  for (k = 0; k < host_address_cells; k++) {
   ranges[i].host <<= 32;
   ranges[i].host |= base_ranges[j++];
  }
  ranges[i].size = 0;
  for (k = 0; k < size_cells; k++) {
   ranges[i].size <<= 32;
   ranges[i].size |= base_ranges[j++];
  }
 }

 free(base_ranges, M_DEVBUF);
 return (nranges);
}
