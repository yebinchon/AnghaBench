
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physdev_pci_device_add {int devfn; int bus; int seg; } ;
struct TYPE_2__ {int slot; int func; int bus; int domain; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;
typedef int add_pci ;


 int HYPERVISOR_physdev_op (int ,struct physdev_pci_device_add*) ;
 int KASSERT (int ,char*) ;
 int PHYSDEVOP_pci_device_add ;
 int bzero (struct physdev_pci_device_add*,int) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int panic (char*,int ,int,int) ;

void
xen_pci_child_added_method(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo;
 struct physdev_pci_device_add add_pci;
 int error;

 dinfo = device_get_ivars(child);
 KASSERT((dinfo != ((void*)0)),
     ("xen_pci_add_child_method called with NULL dinfo"));

 bzero(&add_pci, sizeof(add_pci));
 add_pci.seg = dinfo->cfg.domain;
 add_pci.bus = dinfo->cfg.bus;
 add_pci.devfn = (dinfo->cfg.slot << 3) | dinfo->cfg.func;
 error = HYPERVISOR_physdev_op(PHYSDEVOP_pci_device_add, &add_pci);
 if (error)
  panic("unable to add device bus %u devfn %u error: %d\n",
      add_pci.bus, add_pci.devfn, error);
}
