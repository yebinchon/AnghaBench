
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_GSSR_I2C_MASK ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_acquire_swfw_sync_X540 (struct ixgbe_hw*,int) ;
 int ixgbe_set_mux (struct ixgbe_hw*,int) ;

s32 ixgbe_acquire_swfw_sync_X550em(struct ixgbe_hw *hw, u32 mask)
{
 s32 status;

 DEBUGFUNC("ixgbe_acquire_swfw_sync_X550em");

 status = ixgbe_acquire_swfw_sync_X540(hw, mask);
 if (status)
  return status;

 if (mask & IXGBE_GSSR_I2C_MASK)
  ixgbe_set_mux(hw, 1);

 return IXGBE_SUCCESS;
}
