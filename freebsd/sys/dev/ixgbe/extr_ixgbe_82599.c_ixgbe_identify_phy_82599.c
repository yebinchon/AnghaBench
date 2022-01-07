
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_identify_module_generic (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_identify_phy_generic (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_media_type_copper ;
 scalar_t__ ixgbe_phy_none ;
 scalar_t__ ixgbe_phy_sfp_unsupported ;
 scalar_t__ ixgbe_phy_unknown ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;

s32 ixgbe_identify_phy_82599(struct ixgbe_hw *hw)
{
 s32 status;

 DEBUGFUNC("ixgbe_identify_phy_82599");


 status = ixgbe_identify_phy_generic(hw);
 if (status != IXGBE_SUCCESS) {

  if (hw->mac.ops.get_media_type(hw) == ixgbe_media_type_copper)
   return status;
  else
   status = ixgbe_identify_module_generic(hw);
 }


 if (hw->phy.type == ixgbe_phy_unknown) {
  hw->phy.type = ixgbe_phy_none;
  return IXGBE_SUCCESS;
 }


 if (hw->phy.type == ixgbe_phy_sfp_unsupported)
  return IXGBE_ERR_SFP_NOT_SUPPORTED;

 return status;
}
