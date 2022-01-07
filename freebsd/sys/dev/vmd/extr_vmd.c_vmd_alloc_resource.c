
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 scalar_t__ PCI_DOMAINMAX ;
 int PCI_RES_BUS ;
 scalar_t__ device_get_unit (int ) ;
 struct resource* pci_domain_alloc_bus (scalar_t__,int ,int*,int ,int ,int ,int ) ;
 struct resource* pcib_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;

__attribute__((used)) static struct resource *
vmd_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{

 if (type == PCI_RES_BUS) {
  return (pci_domain_alloc_bus(PCI_DOMAINMAX -
      device_get_unit(dev), child, rid, start, end,
      count, flags));
 }

 return (pcib_alloc_resource(dev, child, type, rid, start, end,
        count, flags));
}
