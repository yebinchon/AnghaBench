
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct TYPE_2__ {int flags; scalar_t__ hdrtype; } ;
struct pci_devinfo {struct resource_list resources; TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 int BUS_RELEASE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int EDOOFUS ;
 int PCICFG_VF ;
 scalar_t__ PCIM_HDRTYPE_BRIDGE ;





 int bus_generic_release_resource (int ,int ,int,int,struct resource*) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int pci_vf_release_mem_resource (int ,int ,int,struct resource*) ;
 int resource_list_release (struct resource_list*,int ,int ,int,int,struct resource*) ;

int
pci_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
 struct pci_devinfo *dinfo;
 struct resource_list *rl;
 pcicfgregs *cfg;

 if (device_get_parent(child) != dev)
  return (BUS_RELEASE_RESOURCE(device_get_parent(dev), child,
      type, rid, r));

 dinfo = device_get_ivars(child);
 cfg = &dinfo->cfg;
 rl = &dinfo->resources;
 return (resource_list_release(rl, dev, child, type, rid, r));
}
