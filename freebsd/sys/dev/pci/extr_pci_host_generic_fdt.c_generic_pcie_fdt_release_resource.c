
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int PCI_RES_BUS ;
 int bus_generic_release_resource (int ,int ,int,int,struct resource*) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int pci_host_generic_core_release_resource (int ,int ,int,int,struct resource*) ;

__attribute__((used)) static int
generic_pcie_fdt_release_resource(device_t dev, device_t child, int type,
    int rid, struct resource *res)
{
 if ((int)ofw_bus_get_node(child) <= 0) {
  return (pci_host_generic_core_release_resource(dev, child, type,
      rid, res));
 }


 return (bus_generic_release_resource(dev, child, type, rid, res));
}
