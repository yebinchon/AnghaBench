
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinfo {int cfg; } ;
typedef int driver_t ;
typedef int device_t ;


 int DEVICE_IDENTIFY (int *,int ) ;
 scalar_t__ DS_NOTPRESENT ;
 int M_TEMP ;
 scalar_t__ bootverbose ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 scalar_t__ device_get_state (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ device_probe_and_attach (int ) ;
 int free (int *,int ) ;
 int pci_cfg_restore (int ,struct pci_devinfo*) ;
 int pci_child_detached (int ,int ) ;
 int pci_print_verbose (struct pci_devinfo*) ;
 int pci_printf (int *,char*) ;

void
pci_driver_added(device_t dev, driver_t *driver)
{
 int numdevs;
 device_t *devlist;
 device_t child;
 struct pci_devinfo *dinfo;
 int i;

 if (bootverbose)
  device_printf(dev, "driver added\n");
 DEVICE_IDENTIFY(driver, dev);
 if (device_get_children(dev, &devlist, &numdevs) != 0)
  return;
 for (i = 0; i < numdevs; i++) {
  child = devlist[i];
  if (device_get_state(child) != DS_NOTPRESENT)
   continue;
  dinfo = device_get_ivars(child);
  pci_print_verbose(dinfo);
  if (bootverbose)
   pci_printf(&dinfo->cfg, "reprobing on driver added\n");
  pci_cfg_restore(child, dinfo);
  if (device_probe_and_attach(child) != 0)
   pci_child_detached(dev, child);
 }
 free(devlist, M_TEMP);
}
