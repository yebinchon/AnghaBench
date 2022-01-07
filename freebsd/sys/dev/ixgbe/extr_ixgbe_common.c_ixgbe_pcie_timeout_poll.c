
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s16 ;
 int IXGBE_PCIDEVCTRL2_TIMEO_MASK ;
 int IXGBE_PCI_DEVICE_CONTROL2 ;
 int IXGBE_READ_PCIE_WORD (struct ixgbe_hw*,int ) ;

__attribute__((used)) static u32 ixgbe_pcie_timeout_poll(struct ixgbe_hw *hw)
{
 s16 devctl2;
 u32 pollcnt;

 devctl2 = IXGBE_READ_PCIE_WORD(hw, IXGBE_PCI_DEVICE_CONTROL2);
 devctl2 &= IXGBE_PCIDEVCTRL2_TIMEO_MASK;

 switch (devctl2) {
 case 128:
  pollcnt = 1300;
  break;
 case 131:
  pollcnt = 5200;
  break;
 case 132:
  pollcnt = 20000;
  break;
 case 130:
  pollcnt = 80000;
  break;
 case 134:
  pollcnt = 34000;
  break;
 case 129:
 case 133:
 case 136:
 case 135:
 default:
  pollcnt = 800;
  break;
 }


 return (pollcnt * 11) / 10;
}
