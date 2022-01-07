
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int domain; int bus; int slot; int func; int dev; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct cardbus_devinfo {TYPE_2__ pci; } ;
typedef int driver_t ;
typedef int device_t ;


 int DEVICE_IDENTIFY (int *,int ) ;
 scalar_t__ DS_NOTPRESENT ;
 int M_TEMP ;
 int POWER_ENABLE_SOCKET (int ,int ) ;
 scalar_t__ bootverbose ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 struct cardbus_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_state (int ) ;
 scalar_t__ device_probe_and_attach (int ) ;
 int free (int *,int ) ;
 int pci_cfg_restore (int ,TYPE_2__*) ;
 int pci_cfg_save (int ,TYPE_2__*,int) ;
 int pci_print_verbose (TYPE_2__*) ;
 int printf (char*,int,int,int,int) ;

__attribute__((used)) static void
cardbus_driver_added(device_t cbdev, driver_t *driver)
{
 int numdevs;
 device_t *devlist;
 device_t dev;
 int i;
 struct cardbus_devinfo *dinfo;

 DEVICE_IDENTIFY(driver, cbdev);
 if (device_get_children(cbdev, &devlist, &numdevs) != 0)
  return;





 for (i = 0; i < numdevs; i++) {
  dev = devlist[i];
  if (device_get_state(dev) != DS_NOTPRESENT)
      break;
 }
 if (i > 0 && i == numdevs)
  POWER_ENABLE_SOCKET(device_get_parent(cbdev), cbdev);
 for (i = 0; i < numdevs; i++) {
  dev = devlist[i];
  if (device_get_state(dev) != DS_NOTPRESENT)
   continue;
  dinfo = device_get_ivars(dev);
  pci_print_verbose(&dinfo->pci);
  if (bootverbose)
   printf("pci%d:%d:%d:%d: reprobing on driver added\n",
       dinfo->pci.cfg.domain, dinfo->pci.cfg.bus,
       dinfo->pci.cfg.slot, dinfo->pci.cfg.func);
  pci_cfg_restore(dinfo->pci.cfg.dev, &dinfo->pci);
  if (device_probe_and_attach(dev) != 0)
   pci_cfg_save(dev, &dinfo->pci, 1);
 }
 free(devlist, M_TEMP);
}
