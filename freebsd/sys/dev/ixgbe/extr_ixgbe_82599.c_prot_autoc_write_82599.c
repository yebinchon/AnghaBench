
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_AUTOC ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_MAC_CSR_SM ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int TRUE ;
 scalar_t__ ixgbe_check_reset_blocked (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_reset_pipeline_82599 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_verify_lesm_fw_enabled_82599 (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

s32 prot_autoc_write_82599(struct ixgbe_hw *hw, u32 autoc, bool locked)
{
 s32 ret_val = IXGBE_SUCCESS;


 if (ixgbe_check_reset_blocked(hw))
  goto out;





 if (!locked && ixgbe_verify_lesm_fw_enabled_82599(hw)) {
  ret_val = hw->mac.ops.acquire_swfw_sync(hw,
     IXGBE_GSSR_MAC_CSR_SM);
  if (ret_val != IXGBE_SUCCESS)
   return IXGBE_ERR_SWFW_SYNC;

  locked = TRUE;
 }

 IXGBE_WRITE_REG(hw, IXGBE_AUTOC, autoc);
 ret_val = ixgbe_reset_pipeline_82599(hw);

out:



 if (locked)
  hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);

 return ret_val;
}
