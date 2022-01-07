
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct pci_devinfo {TYPE_1__ cfg; int resources; } ;
typedef int device_t ;


 int EVENTHANDLER_INVOKE (int ,int ) ;
 int device_add_child (int ,int *,int) ;
 int device_set_ivars (int ,struct pci_devinfo*) ;
 int pci_add_child_clear_aer (int ,struct pci_devinfo*) ;
 int pci_add_device ;
 int pci_add_resources (int ,int ,int ,int ) ;
 int pci_cfg_restore (int ,struct pci_devinfo*) ;
 int pci_cfg_save (int ,struct pci_devinfo*,int ) ;
 int pci_child_added (int ) ;
 scalar_t__ pci_clear_aer_on_attach ;
 int pci_print_verbose (struct pci_devinfo*) ;
 int resource_list_init (int *) ;

void
pci_add_child(device_t bus, struct pci_devinfo *dinfo)
{
 device_t dev;

 dinfo->cfg.dev = dev = device_add_child(bus, ((void*)0), -1);
 device_set_ivars(dev, dinfo);
 resource_list_init(&dinfo->resources);
 pci_cfg_save(dev, dinfo, 0);
 pci_cfg_restore(dev, dinfo);
 pci_print_verbose(dinfo);
 pci_add_resources(bus, dev, 0, 0);
 pci_child_added(dinfo->cfg.dev);

 if (pci_clear_aer_on_attach)
  pci_add_child_clear_aer(dev, dinfo);

 EVENTHANDLER_INVOKE(pci_add_device, dinfo->cfg.dev);
}
