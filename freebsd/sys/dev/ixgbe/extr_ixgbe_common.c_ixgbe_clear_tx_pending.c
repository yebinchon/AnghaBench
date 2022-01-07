
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int flags; } ;
struct ixgbe_hw {int hw_addr; TYPE_1__ mac; } ;


 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_GCR_EXT ;
 scalar_t__ IXGBE_GCR_EXT_BUFFERS_CLEAR ;
 int IXGBE_HLREG0 ;
 scalar_t__ IXGBE_HLREG0_LPBK ;
 int IXGBE_PCI_DEVICE_STATUS ;
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ;
 int IXGBE_READ_PCIE_WORD (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_REMOVED (int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 scalar_t__ ixgbe_pcie_timeout_poll (struct ixgbe_hw*) ;
 int msec_delay (int) ;
 int usec_delay (int) ;

void ixgbe_clear_tx_pending(struct ixgbe_hw *hw)
{
 u32 gcr_ext, hlreg0, i, poll;
 u16 value;





 if (!(hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED))
  return;






 hlreg0 = IXGBE_READ_REG(hw, IXGBE_HLREG0);
 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0 | IXGBE_HLREG0_LPBK);


 IXGBE_WRITE_FLUSH(hw);
 msec_delay(3);





 poll = ixgbe_pcie_timeout_poll(hw);
 for (i = 0; i < poll; i++) {
  usec_delay(100);
  value = IXGBE_READ_PCIE_WORD(hw, IXGBE_PCI_DEVICE_STATUS);
  if (IXGBE_REMOVED(hw->hw_addr))
   goto out;
  if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
   goto out;
 }

out:

 gcr_ext = IXGBE_READ_REG(hw, IXGBE_GCR_EXT);
 IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT,
   gcr_ext | IXGBE_GCR_EXT_BUFFERS_CLEAR);


 IXGBE_WRITE_FLUSH(hw);
 usec_delay(20);


 IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT, gcr_ext);
 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0);
}
