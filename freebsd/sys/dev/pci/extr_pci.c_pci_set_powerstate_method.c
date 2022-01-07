
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pp_cap; int pp_status; } ;
struct TYPE_5__ {TYPE_1__ pp; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef TYPE_2__ pcicfgregs ;
typedef int device_t ;


 int DELAY (int) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int PCIM_PCAP_D1SUPP ;
 int PCIM_PCAP_D2SUPP ;
 int PCIM_PSTAT_D0 ;
 int PCIM_PSTAT_D1 ;
 int PCIM_PSTAT_D2 ;
 int PCIM_PSTAT_D3 ;
 int PCIM_PSTAT_DMASK ;




 int PCI_READ_CONFIG (int ,int ,int ,int) ;
 int PCI_WRITE_CONFIG (int ,int ,int ,int,int) ;
 scalar_t__ bootverbose ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_get_powerstate (int ) ;
 int pci_printf (TYPE_2__*,char*,int,int) ;

int
pci_set_powerstate_method(device_t dev, device_t child, int state)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;
 uint16_t status;
 int oldstate, highest, delay;

 if (cfg->pp.pp_cap == 0)
  return (EOPNOTSUPP);






 oldstate = pci_get_powerstate(child);
 if (oldstate == state)
  return (0);
 highest = (oldstate > state) ? oldstate : state;
 if (highest == 128)
     delay = 10000;
 else if (highest == 129)
     delay = 200;
 else
     delay = 0;
 status = PCI_READ_CONFIG(dev, child, cfg->pp.pp_status, 2)
     & ~PCIM_PSTAT_DMASK;
 switch (state) {
 case 131:
  status |= PCIM_PSTAT_D0;
  break;
 case 130:
  if ((cfg->pp.pp_cap & PCIM_PCAP_D1SUPP) == 0)
   return (EOPNOTSUPP);
  status |= PCIM_PSTAT_D1;
  break;
 case 129:
  if ((cfg->pp.pp_cap & PCIM_PCAP_D2SUPP) == 0)
   return (EOPNOTSUPP);
  status |= PCIM_PSTAT_D2;
  break;
 case 128:
  status |= PCIM_PSTAT_D3;
  break;
 default:
  return (EINVAL);
 }

 if (bootverbose)
  pci_printf(cfg, "Transition from D%d to D%d\n", oldstate,
      state);

 PCI_WRITE_CONFIG(dev, child, cfg->pp.pp_status, status, 2);
 if (delay)
  DELAY(delay);
 return (0);
}
