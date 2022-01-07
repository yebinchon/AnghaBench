
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinfo {int dummy; } ;
typedef int device_t ;


 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_cfg_save (int ,struct pci_devinfo*,int ) ;

void
pci_save_state(device_t dev)
{
 struct pci_devinfo *dinfo;

 dinfo = device_get_ivars(dev);
 pci_cfg_save(dev, dinfo, 0);
}
