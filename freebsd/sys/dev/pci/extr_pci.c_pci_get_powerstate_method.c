
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ pp_cap; int pp_status; } ;
struct TYPE_4__ {TYPE_1__ pp; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef TYPE_2__ pcicfgregs ;
typedef int device_t ;






 int PCIM_PSTAT_DMASK ;
 int PCI_POWERSTATE_D0 ;
 int PCI_POWERSTATE_D1 ;
 int PCI_POWERSTATE_D2 ;
 int PCI_POWERSTATE_D3 ;
 int PCI_POWERSTATE_UNKNOWN ;
 int PCI_READ_CONFIG (int ,int ,int ,int) ;
 struct pci_devinfo* device_get_ivars (int ) ;

int
pci_get_powerstate_method(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;
 uint16_t status;
 int result;

 if (cfg->pp.pp_cap != 0) {
  status = PCI_READ_CONFIG(dev, child, cfg->pp.pp_status, 2);
  switch (status & PCIM_PSTAT_DMASK) {
  case 131:
   result = PCI_POWERSTATE_D0;
   break;
  case 130:
   result = PCI_POWERSTATE_D1;
   break;
  case 129:
   result = PCI_POWERSTATE_D2;
   break;
  case 128:
   result = PCI_POWERSTATE_D3;
   break;
  default:
   result = PCI_POWERSTATE_UNKNOWN;
   break;
  }
 } else {

  result = PCI_POWERSTATE_D0;
 }
 return (result);
}
