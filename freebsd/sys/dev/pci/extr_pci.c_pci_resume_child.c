
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int * res; } ;
struct pci_devinfo {int resources; } ;
typedef int device_t ;


 int PCI_POWERSTATE_D0 ;
 int SYS_RES_IRQ ;
 int bus_generic_resume_child (int ,int ) ;
 int bus_resume_intr (int ,int *) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_is_attached (int ) ;
 int pci_cfg_restore (int ,struct pci_devinfo*) ;
 int pci_cfg_save (int ,struct pci_devinfo*,int) ;
 scalar_t__ pci_do_power_resume ;
 scalar_t__ pci_do_power_suspend ;
 int pci_set_power_child (int ,int ,int ) ;
 struct resource_list_entry* resource_list_find (int *,int ,int ) ;

int
pci_resume_child(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo;
 struct resource_list_entry *rle;

 if (pci_do_power_resume)
  pci_set_power_child(dev, child, PCI_POWERSTATE_D0);

 dinfo = device_get_ivars(child);
 pci_cfg_restore(child, dinfo);
 if (!device_is_attached(child))
  pci_cfg_save(child, dinfo, 1);

 bus_generic_resume_child(dev, child);




 if (pci_do_power_suspend) {

  rle = resource_list_find(&dinfo->resources, SYS_RES_IRQ, 0);
  if (rle != ((void*)0) && rle->res != ((void*)0))
   (void)bus_resume_intr(child, rle->res);
 }

 return (0);
}
