
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; int dev; } ;
typedef int device_t ;


 int PCIEM_LINK_CAP_ASPM ;
 int PCIEM_LINK_CTL_ASPMC ;
 int PCIER_LINK_CAP ;
 int PCIER_LINK_CTL ;
 int PCIY_EXPRESS ;



 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
em_disable_aspm(struct adapter *adapter)
{
 int base, reg;
 u16 link_cap,link_ctrl;
 device_t dev = adapter->dev;

 switch (adapter->hw.mac.type) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return;
 }
 if (pci_find_cap(dev, PCIY_EXPRESS, &base) != 0)
  return;
 reg = base + PCIER_LINK_CAP;
 link_cap = pci_read_config(dev, reg, 2);
 if ((link_cap & PCIEM_LINK_CAP_ASPM) == 0)
  return;
 reg = base + PCIER_LINK_CTL;
 link_ctrl = pci_read_config(dev, reg, 2);
 link_ctrl &= ~PCIEM_LINK_CTL_ASPMC;
 pci_write_config(dev, reg, link_ctrl, 2);
 return;
}
