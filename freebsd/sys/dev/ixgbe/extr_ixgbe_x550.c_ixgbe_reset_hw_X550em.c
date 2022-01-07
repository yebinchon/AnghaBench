
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ (* stop_adapter ) (struct ixgbe_hw*) ;scalar_t__ (* setup_sfp ) (struct ixgbe_hw*) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;int (* init_rx_addrs ) (struct ixgbe_hw*) ;int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int) ;int (* check_link ) (struct ixgbe_hw*,int *,int*,void*) ;} ;
struct TYPE_8__ {int flags; int num_rar_entries; TYPE_3__ ops; int perm_addr; } ;
struct TYPE_5__ {scalar_t__ (* init ) (struct ixgbe_hw*) ;scalar_t__ (* reset ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int phy_semaphore_mask; scalar_t__ type; int sfp_setup_needed; TYPE_1__ ops; int reset_disable; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_4__ mac; int force_full_reset; TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 int ERROR_REPORT2 (int ,char*,scalar_t__) ;
 void* FALSE ;
 int IXGBE_CTRL ;
 int IXGBE_CTRL_LNK_RST ;
 int IXGBE_CTRL_RST ;
 int IXGBE_CTRL_RST_MASK ;
 scalar_t__ IXGBE_DEV_ID_X550EM_X_SFP ;
 int IXGBE_ERROR_CAUTION ;
 scalar_t__ IXGBE_ERR_OVERTEMP ;
 scalar_t__ IXGBE_ERR_PHY_ADDR_INVALID ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_clear_tx_pending (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_init_ext_t_x550em (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_phy_x550em_ext_t ;
 int ixgbe_set_mdio_speed (struct ixgbe_hw*) ;
 int ixgbe_setup_mux_ctl (struct ixgbe_hw*) ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;
 scalar_t__ stub3 (struct ixgbe_hw*) ;
 scalar_t__ stub4 (struct ixgbe_hw*) ;
 int stub5 (struct ixgbe_hw*,int *,int*,void*) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int) ;
 int stub7 (struct ixgbe_hw*,int) ;
 int stub8 (struct ixgbe_hw*,int ) ;
 int stub9 (struct ixgbe_hw*) ;
 int usec_delay (int) ;

s32 ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
{
 ixgbe_link_speed link_speed;
 s32 status;
 u32 ctrl = 0;
 u32 i;
 bool link_up = FALSE;
 u32 swfw_mask = hw->phy.phy_semaphore_mask;

 DEBUGFUNC("ixgbe_reset_hw_X550em");


 status = hw->mac.ops.stop_adapter(hw);
 if (status != IXGBE_SUCCESS) {
  DEBUGOUT1("Failed to stop adapter, STATUS = %d\n", status);
  return status;
 }

 ixgbe_clear_tx_pending(hw);

 ixgbe_set_mdio_speed(hw);


 status = hw->phy.ops.init(hw);

 if (status)
  DEBUGOUT1("Failed to initialize PHY ops, STATUS = %d\n",
     status);

 if (status == IXGBE_ERR_SFP_NOT_SUPPORTED ||
     status == IXGBE_ERR_PHY_ADDR_INVALID) {
  DEBUGOUT("Returning from reset HW due to PHY init failure\n");
  return status;
 }


 if (hw->phy.type == ixgbe_phy_x550em_ext_t) {
  status = ixgbe_init_ext_t_x550em(hw);
  if (status) {
   DEBUGOUT1("Failed to start the external PHY, STATUS = %d\n",
      status);
   return status;
  }
 }


 if (hw->phy.sfp_setup_needed) {
  status = hw->mac.ops.setup_sfp(hw);
  hw->phy.sfp_setup_needed = FALSE;
 }

 if (status == IXGBE_ERR_SFP_NOT_SUPPORTED)
  return status;


 if (!hw->phy.reset_disable && hw->phy.ops.reset) {
  if (hw->phy.ops.reset(hw) == IXGBE_ERR_OVERTEMP)
   return IXGBE_ERR_OVERTEMP;
 }

mac_reset_top:





 ctrl = IXGBE_CTRL_LNK_RST;
 if (!hw->force_full_reset) {
  hw->mac.ops.check_link(hw, &link_speed, &link_up, FALSE);
  if (link_up)
   ctrl = IXGBE_CTRL_RST;
 }

 status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
 if (status != IXGBE_SUCCESS) {
  ERROR_REPORT2(IXGBE_ERROR_CAUTION,
   "semaphore failed with %d", status);
  return IXGBE_ERR_SWFW_SYNC;
 }
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
  DEBUGOUT("Reset polling failed to complete.\n");
 }

 msec_delay(50);





 if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
  hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
  goto mac_reset_top;
 }


 hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);





 hw->mac.num_rar_entries = 128;
 hw->mac.ops.init_rx_addrs(hw);

 ixgbe_set_mdio_speed(hw);

 if (hw->device_id == IXGBE_DEV_ID_X550EM_X_SFP)
  ixgbe_setup_mux_ctl(hw);

 if (status != IXGBE_SUCCESS)
  DEBUGOUT1("Reset HW failed, STATUS = %d\n", status);

 return status;
}
