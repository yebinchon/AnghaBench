
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ (* stop_adapter ) (struct ixgbe_hw*) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;int (* get_wwn_prefix ) (struct ixgbe_hw*,int *,int *) ;int (* clear_vmdq ) (struct ixgbe_hw*,int,int ) ;int (* set_rar ) (struct ixgbe_hw*,int,int ,int ,int ) ;int (* get_san_mac_addr ) (struct ixgbe_hw*,int ) ;int (* init_rx_addrs ) (struct ixgbe_hw*) ;int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_6__ {int flags; int num_rar_entries; int san_mac_rar_index; int wwpn_prefix; int wwnn_prefix; TYPE_2__ ops; int san_addr; int perm_addr; } ;
struct TYPE_4__ {int phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int ERROR_REPORT2 (int ,char*,scalar_t__) ;
 int IXGBE_CLEAR_VMDQ_ALL ;
 int IXGBE_CTRL ;
 int IXGBE_CTRL_RST ;
 int IXGBE_CTRL_RST_MASK ;
 int IXGBE_ERROR_CAUTION ;
 int IXGBE_ERROR_POLLING ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_RAH_AV ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXPBSIZE (int ) ;
 int IXGBE_RXPBSIZE_SHIFT ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_clear_tx_pending (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_validate_mac_addr (int ) ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int) ;
 int stub3 (struct ixgbe_hw*,int) ;
 int stub4 (struct ixgbe_hw*,int ) ;
 int stub5 (struct ixgbe_hw*) ;
 int stub6 (struct ixgbe_hw*,int ) ;
 int stub7 (struct ixgbe_hw*,int,int ,int ,int ) ;
 int stub8 (struct ixgbe_hw*,int,int ) ;
 int stub9 (struct ixgbe_hw*,int *,int *) ;
 int usec_delay (int) ;

s32 ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
{
 s32 status;
 u32 ctrl, i;
 u32 swfw_mask = hw->phy.phy_semaphore_mask;

 DEBUGFUNC("ixgbe_reset_hw_X540");


 status = hw->mac.ops.stop_adapter(hw);
 if (status != IXGBE_SUCCESS)
  goto reset_hw_out;


 ixgbe_clear_tx_pending(hw);

mac_reset_top:
 status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
 if (status != IXGBE_SUCCESS) {
  ERROR_REPORT2(IXGBE_ERROR_CAUTION,
   "semaphore failed with %d", status);
  return IXGBE_ERR_SWFW_SYNC;
 }
 ctrl = IXGBE_CTRL_RST;
 ctrl |= IXGBE_READ_REG(hw, IXGBE_CTRL);
 IXGBE_WRITE_REG(hw, IXGBE_CTRL, ctrl);
 IXGBE_WRITE_FLUSH(hw);
 hw->mac.ops.release_swfw_sync(hw, swfw_mask);


 for (i = 0; i < 10; i++) {
  usec_delay(1);
  ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL);
  if (!(ctrl & IXGBE_CTRL_RST_MASK))
   break;
 }

 if (ctrl & IXGBE_CTRL_RST_MASK) {
  status = IXGBE_ERR_RESET_FAILED;
  ERROR_REPORT1(IXGBE_ERROR_POLLING,
        "Reset polling failed to complete.\n");
 }
 msec_delay(100);






 if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
  hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
  goto mac_reset_top;
 }


 IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(0), 384 << IXGBE_RXPBSIZE_SHIFT);


 hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);






 hw->mac.num_rar_entries = 128;
 hw->mac.ops.init_rx_addrs(hw);


 hw->mac.ops.get_san_mac_addr(hw, hw->mac.san_addr);


 if (ixgbe_validate_mac_addr(hw->mac.san_addr) == 0) {

  hw->mac.san_mac_rar_index = hw->mac.num_rar_entries - 1;

  hw->mac.ops.set_rar(hw, hw->mac.san_mac_rar_index,
        hw->mac.san_addr, 0, IXGBE_RAH_AV);


  hw->mac.ops.clear_vmdq(hw, hw->mac.san_mac_rar_index,
           IXGBE_CLEAR_VMDQ_ALL);


  hw->mac.num_rar_entries--;
 }


 hw->mac.ops.get_wwn_prefix(hw, &hw->mac.wwnn_prefix,
       &hw->mac.wwpn_prefix);

reset_hw_out:
 return status;
}
