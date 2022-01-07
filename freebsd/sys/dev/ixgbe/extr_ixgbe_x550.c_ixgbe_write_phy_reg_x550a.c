
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_8__ {int (* write_reg_mdi ) (struct ixgbe_hw*,int,int,int ) ;} ;
struct TYPE_7__ {int phy_semaphore_mask; TYPE_4__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_3__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_TOKEN_SM ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ stub1 (struct ixgbe_hw*,int) ;
 int stub2 (struct ixgbe_hw*,int,int,int ) ;
 int stub3 (struct ixgbe_hw*,int) ;

s32 ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
    u32 device_type, u16 phy_data)
{
 s32 status;
 u32 mask = hw->phy.phy_semaphore_mask | IXGBE_GSSR_TOKEN_SM;

 DEBUGFUNC("ixgbe_write_phy_reg_x550a");

 if (hw->mac.ops.acquire_swfw_sync(hw, mask) == IXGBE_SUCCESS) {
  status = hw->phy.ops.write_reg_mdi(hw, reg_addr, device_type,
       phy_data);
  hw->mac.ops.release_swfw_sync(hw, mask);
 } else {
  status = IXGBE_ERR_SWFW_SYNC;
 }

 return status;
}
