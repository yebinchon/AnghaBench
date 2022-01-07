
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcicfg_iov {int iov_pos; } ;
struct TYPE_2__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int PCIM_EA_BEI_BAR_0 ;
 int PCIM_EA_BEI_BAR_5 ;
 int PCIM_EA_BEI_ROM ;
 int PCIM_EA_BEI_VF_BAR_0 ;
 int PCIM_EA_BEI_VF_BAR_5 ;
 int PCIR_BAR (int) ;
 int PCIR_BIOS ;
 int PCIR_SRIOV_BAR (int) ;
 struct pci_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
pci_ea_bei_to_rid(device_t dev, int bei)
{
 if ((bei >= PCIM_EA_BEI_BAR_0) &&
     (bei <= PCIM_EA_BEI_BAR_5))
  return (PCIR_BAR(bei));


 if (bei == PCIM_EA_BEI_ROM)
  return (PCIR_BIOS);
 return (-1);
}
