
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct resource_list_entry {int dummy; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {int msix_alloc; } ;
struct TYPE_4__ {int msi_alloc; } ;
struct TYPE_6__ {int hdrtype; int intpin; int intline; TYPE_2__ msix; TYPE_1__ msi; } ;
struct pci_devinfo {TYPE_3__ cfg; struct resource_list resources; } ;
typedef int rman_res_t ;
typedef TYPE_3__ pcicfgregs ;
typedef int device_t ;


 int PCIM_HDRTYPE_BRIDGE ;



 int PCI_INTERRUPT_VALID (int ) ;




 struct resource* bus_generic_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 struct resource* pci_alloc_secbus (int ,int ,int*,int ,int ,int ,int ) ;
 int pci_assign_interrupt (int ,int ,int ) ;
 struct resource* pci_reserve_map (int ,int ,int,int*,int ,int ,int ,int ,int ) ;
 struct resource* resource_list_alloc (struct resource_list*,int ,int ,int,int*,int ,int ,int ,int ) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

struct resource *
pci_alloc_multi_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_long num,
    u_int flags)
{
 struct pci_devinfo *dinfo;
 struct resource_list *rl;
 struct resource_list_entry *rle;
 struct resource *res;
 pcicfgregs *cfg;




 dinfo = device_get_ivars(child);
 rl = &dinfo->resources;
 cfg = &dinfo->cfg;
 switch (type) {





 case 129:




  if (*rid == 0 && (cfg->msi.msi_alloc > 0 ||
      cfg->msix.msix_alloc > 0))
   return (((void*)0));






  if (*rid == 0 && !PCI_INTERRUPT_VALID(cfg->intline) &&
      (cfg->intpin != 0))
   pci_assign_interrupt(dev, child, 0);
  break;
 case 130:
 case 128:
  rle = resource_list_find(rl, type, *rid);
  if (rle == ((void*)0)) {
   res = pci_reserve_map(dev, child, type, rid, start, end,
       count, num, flags);
   if (res == ((void*)0))
    return (((void*)0));
  }
 }
 return (resource_list_alloc(rl, dev, child, type, rid,
     start, end, count, flags));
}
