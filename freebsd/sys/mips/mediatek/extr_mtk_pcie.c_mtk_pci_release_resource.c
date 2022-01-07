
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int PCI_RES_BUS ;
 int bus_generic_release_resource (int ,int ,int,int,struct resource*) ;
 int pci_domain_release_bus (int ,int ,int,struct resource*) ;

__attribute__((used)) static int
mtk_pci_release_resource(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{

 if (type == PCI_RES_BUS)
  return (pci_domain_release_bus(0, child, rid, res));

 return (bus_generic_release_resource(bus, child, type, rid, res));
}
