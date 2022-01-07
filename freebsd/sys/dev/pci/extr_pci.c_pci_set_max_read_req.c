
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int pcie_location; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef int device_t ;


 int PCIEM_CTL_MAX_READ_REQUEST ;
 scalar_t__ PCIER_DEVICE_CTL ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int fls (int) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

int
pci_set_max_read_req(device_t dev, int size)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 int cap;
 uint16_t val;

 cap = dinfo->cfg.pcie.pcie_location;
 if (cap == 0)
  return (0);
 if (size < 128)
  size = 128;
 if (size > 4096)
  size = 4096;
 size = (1 << (fls(size) - 1));
 val = pci_read_config(dev, cap + PCIER_DEVICE_CTL, 2);
 val &= ~PCIEM_CTL_MAX_READ_REQUEST;
 val |= (fls(size) - 8) << 12;
 pci_write_config(dev, cap + PCIER_DEVICE_CTL, val, 2);
 return (size);
}
