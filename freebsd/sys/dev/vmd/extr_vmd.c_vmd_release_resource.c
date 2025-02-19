
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 scalar_t__ PCI_DOMAINMAX ;
 int PCI_RES_BUS ;
 scalar_t__ device_get_unit (int ) ;
 int pci_domain_release_bus (scalar_t__,int ,int,struct resource*) ;
 int pcib_release_resource (int ,int ,int,int,struct resource*) ;

__attribute__((used)) static int
vmd_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
 if (type == PCI_RES_BUS)
  return (pci_domain_release_bus(PCI_DOMAINMAX -
      device_get_unit(dev), child, rid, r));
 return (pcib_release_resource(dev, child, type, rid, r));
}
