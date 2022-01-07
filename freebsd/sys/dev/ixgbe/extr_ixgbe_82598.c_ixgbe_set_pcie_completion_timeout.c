
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_GCR ;
 int IXGBE_GCR_CAP_VER2 ;
 int IXGBE_GCR_CMPL_TMOUT_10ms ;
 int IXGBE_GCR_CMPL_TMOUT_MASK ;
 int IXGBE_GCR_CMPL_TMOUT_RESEND ;
 int IXGBE_PCI_DEVICE_CONTROL2 ;
 int IXGBE_PCI_DEVICE_CONTROL2_16ms ;
 int IXGBE_READ_PCIE_WORD (struct ixgbe_hw*,int ) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_PCIE_WORD (struct ixgbe_hw*,int ,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

void ixgbe_set_pcie_completion_timeout(struct ixgbe_hw *hw)
{
 u32 gcr = IXGBE_READ_REG(hw, IXGBE_GCR);
 u16 pcie_devctl2;


 if (gcr & IXGBE_GCR_CMPL_TMOUT_MASK)
  goto out;





 if (!(gcr & IXGBE_GCR_CAP_VER2)) {
  gcr |= IXGBE_GCR_CMPL_TMOUT_10ms;
  goto out;
 }






 pcie_devctl2 = IXGBE_READ_PCIE_WORD(hw, IXGBE_PCI_DEVICE_CONTROL2);
 pcie_devctl2 |= IXGBE_PCI_DEVICE_CONTROL2_16ms;
 IXGBE_WRITE_PCIE_WORD(hw, IXGBE_PCI_DEVICE_CONTROL2, pcie_devctl2);
out:

 gcr &= ~IXGBE_GCR_CMPL_TMOUT_RESEND;
 IXGBE_WRITE_REG(hw, IXGBE_GCR, gcr);
}
