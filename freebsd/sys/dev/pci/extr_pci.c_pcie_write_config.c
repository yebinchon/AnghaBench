
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pcie_location; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef int device_t ;


 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_write_config (int ,int,int ,int) ;

void
pcie_write_config(device_t dev, int reg, uint32_t value, int width)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 int cap;

 cap = dinfo->cfg.pcie.pcie_location;
 if (cap == 0)
  return;
 pci_write_config(dev, cap + reg, value, width);
}
