
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; int flags; } ;
struct ixgbe_hw {int hw_addr; TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_CTRL ;
 int IXGBE_CTRL_GIO_DIS ;
 int IXGBE_ERROR_POLLING ;
 int IXGBE_ERR_MASTER_REQUESTS_PENDING ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_PCI_DEVICE_STATUS ;
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ;
 scalar_t__ IXGBE_PCI_MASTER_DISABLE_TIMEOUT ;
 int IXGBE_READ_PCIE_WORD (struct ixgbe_hw*,int ) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_REMOVED (int ) ;
 int IXGBE_STATUS ;
 int IXGBE_STATUS_GIO ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 scalar_t__ ixgbe_mac_X550 ;
 scalar_t__ ixgbe_pcie_timeout_poll (struct ixgbe_hw*) ;
 int usec_delay (int) ;

s32 ixgbe_disable_pcie_master(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_SUCCESS;
 u32 i, poll;
 u16 value;

 DEBUGFUNC("ixgbe_disable_pcie_master");


 IXGBE_WRITE_REG(hw, IXGBE_CTRL, IXGBE_CTRL_GIO_DIS);


 if (!(IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO) ||
     IXGBE_REMOVED(hw->hw_addr))
  goto out;


 for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
  usec_delay(100);
  if (!(IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO))
   goto out;
 }
 DEBUGOUT("GIO Master Disable bit didn't clear - requesting resets\n");
 hw->mac.flags |= IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;

 if (hw->mac.type >= ixgbe_mac_X550)
  goto out;





 poll = ixgbe_pcie_timeout_poll(hw);
 for (i = 0; i < poll; i++) {
  usec_delay(100);
  value = IXGBE_READ_PCIE_WORD(hw, IXGBE_PCI_DEVICE_STATUS);
  if (IXGBE_REMOVED(hw->hw_addr))
   goto out;
  if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
   goto out;
 }

 ERROR_REPORT1(IXGBE_ERROR_POLLING,
       "PCIe transaction pending bit also did not clear.\n");
 status = IXGBE_ERR_MASTER_REQUESTS_PENDING;

out:
 return status;
}
