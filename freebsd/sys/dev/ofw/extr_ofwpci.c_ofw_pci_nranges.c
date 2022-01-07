
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pci_cell_info {int host_address_cells; int size_cells; int pci_address_cell; } ;
typedef int ssize_t ;
typedef int phandle_t ;
typedef int cell_t ;


 int OF_getencprop (int ,char*,int*,int) ;
 int OF_getproplen (int ,char*) ;
 int OF_parent (int ) ;

int
ofw_pci_nranges(phandle_t node, struct ofw_pci_cell_info *info)
{
 ssize_t nbase_ranges;

 if (info == ((void*)0))
  return (-1);

 info->host_address_cells = 1;
 info->size_cells = 2;
 info->pci_address_cell = 3;

 OF_getencprop(OF_parent(node), "#address-cells",
     &(info->host_address_cells), sizeof(info->host_address_cells));
 OF_getencprop(node, "#address-cells",
     &(info->pci_address_cell), sizeof(info->pci_address_cell));
 OF_getencprop(node, "#size-cells", &(info->size_cells),
     sizeof(info->size_cells));

 nbase_ranges = OF_getproplen(node, "ranges");
 if (nbase_ranges <= 0)
  return (-1);

 return (nbase_ranges / sizeof(cell_t) /
     (info->pci_address_cell + info->host_address_cells +
     info->size_cells));
}
