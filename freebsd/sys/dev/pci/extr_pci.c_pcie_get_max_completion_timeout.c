
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pcie_location; int pcie_flags; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef int device_t ;


 int PCIEM_CAP2_COMP_TIMO_RANGES ;
 int PCIEM_CTL2_COMP_TIMO_VAL ;
 int PCIEM_FLAGS_VERSION ;
 scalar_t__ PCIER_DEVICE_CAP2 ;
 scalar_t__ PCIER_DEVICE_CTL2 ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_read_config (int ,scalar_t__,int) ;

int
pcie_get_max_completion_timeout(device_t dev)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 int cap;

 cap = dinfo->cfg.pcie.pcie_location;
 if (cap == 0)
  return (0);






 if ((dinfo->cfg.pcie.pcie_flags & PCIEM_FLAGS_VERSION) < 2 ||
     (pci_read_config(dev, cap + PCIER_DEVICE_CAP2, 4) &
     PCIEM_CAP2_COMP_TIMO_RANGES) == 0)
  return (50 * 1000);

 switch (pci_read_config(dev, cap + PCIER_DEVICE_CTL2, 2) &
     PCIEM_CTL2_COMP_TIMO_VAL) {
 case 135:
  return (100);
 case 134:
  return (10 * 1000);
 case 130:
  return (55 * 1000);
 case 132:
  return (210 * 1000);
 case 128:
  return (900 * 1000);
 case 131:
  return (3500 * 1000);
 case 133:
  return (13 * 1000 * 1000);
 case 129:
  return (64 * 1000 * 1000);
 default:
  return (50 * 1000);
 }
}
