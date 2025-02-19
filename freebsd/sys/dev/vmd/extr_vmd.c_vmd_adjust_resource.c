
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 scalar_t__ PCI_DOMAINMAX ;
 int PCI_RES_BUS ;
 scalar_t__ device_get_unit (int ) ;
 int pci_domain_adjust_bus (scalar_t__,int ,struct resource*,int ,int ) ;
 int pcib_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;

__attribute__((used)) static int
vmd_adjust_resource(device_t dev, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
 struct resource *res = r;

 if (type == PCI_RES_BUS)
  return (pci_domain_adjust_bus(PCI_DOMAINMAX -
   device_get_unit(dev), child, res, start, end));
 return (pcib_adjust_resource(dev, child, type, res, start, end));
}
