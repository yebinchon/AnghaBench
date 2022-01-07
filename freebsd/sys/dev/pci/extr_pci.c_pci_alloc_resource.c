
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;


 struct resource* BUS_ALLOC_RESOURCE (scalar_t__,scalar_t__,int,int*,int ,int ,int ,int ) ;
 int PCICFG_VF ;


 struct pci_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct resource* pci_alloc_multi_resource (scalar_t__,scalar_t__,int,int*,int ,int ,int ,int,int ) ;
 struct resource* pci_vf_alloc_mem_resource (scalar_t__,scalar_t__,int*,int ,int ,int ,int ) ;

struct resource *
pci_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{




 if (device_get_parent(child) != dev)
  return (BUS_ALLOC_RESOURCE(device_get_parent(dev), child,
      type, rid, start, end, count, flags));
 return (pci_alloc_multi_resource(dev, child, type, rid, start, end,
     count, 1, flags));
}
