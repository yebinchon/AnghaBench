
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ sfp_type; scalar_t__ media_type; scalar_t__ multispeed_fiber; } ;
struct TYPE_3__ {int orig_autoc; scalar_t__ orig_link_settings_stored; } ;
struct ixgbe_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int FALSE ;
 int IXGBE_AUTOC ;
 int IXGBE_AUTOC_KR_SUPP ;
 int IXGBE_AUTOC_KX4_SUPP ;
 int IXGBE_AUTOC_KX_SUPP ;







 int IXGBE_AUTOC_LMS_MASK ;

 int IXGBE_ERR_LINK_SETUP ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int TRUE ;
 scalar_t__ ixgbe_media_type_fiber_qsfp ;
 scalar_t__ ixgbe_sfp_type_1g_cu_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_cu_core1 ;
 scalar_t__ ixgbe_sfp_type_1g_lx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_lx_core1 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core1 ;

s32 ixgbe_get_link_capabilities_82599(struct ixgbe_hw *hw,
          ixgbe_link_speed *speed,
          bool *autoneg)
{
 s32 status = IXGBE_SUCCESS;
 u32 autoc = 0;

 DEBUGFUNC("ixgbe_get_link_capabilities_82599");



 if (hw->phy.sfp_type == ixgbe_sfp_type_1g_cu_core0 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_cu_core1 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
     hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1) {
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  *autoneg = TRUE;
  goto out;
 }






 if (hw->mac.orig_link_settings_stored)
  autoc = hw->mac.orig_autoc;
 else
  autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);

 switch (autoc & IXGBE_AUTOC_LMS_MASK) {
 case 132:
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  *autoneg = FALSE;
  break;

 case 135:
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
  *autoneg = FALSE;
  break;

 case 133:
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  *autoneg = TRUE;
  break;

 case 134:
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
  *autoneg = FALSE;
  break;

 case 131:
 case 130:
  *speed = IXGBE_LINK_SPEED_UNKNOWN;
  if (autoc & IXGBE_AUTOC_KR_SUPP)
   *speed |= IXGBE_LINK_SPEED_10GB_FULL;
  if (autoc & IXGBE_AUTOC_KX4_SUPP)
   *speed |= IXGBE_LINK_SPEED_10GB_FULL;
  if (autoc & IXGBE_AUTOC_KX_SUPP)
   *speed |= IXGBE_LINK_SPEED_1GB_FULL;
  *autoneg = TRUE;
  break;

 case 129:
  *speed = IXGBE_LINK_SPEED_100_FULL;
  if (autoc & IXGBE_AUTOC_KR_SUPP)
   *speed |= IXGBE_LINK_SPEED_10GB_FULL;
  if (autoc & IXGBE_AUTOC_KX4_SUPP)
   *speed |= IXGBE_LINK_SPEED_10GB_FULL;
  if (autoc & IXGBE_AUTOC_KX_SUPP)
   *speed |= IXGBE_LINK_SPEED_1GB_FULL;
  *autoneg = TRUE;
  break;

 case 128:
  *speed = IXGBE_LINK_SPEED_1GB_FULL | IXGBE_LINK_SPEED_100_FULL;
  *autoneg = FALSE;
  break;

 default:
  status = IXGBE_ERR_LINK_SETUP;
  goto out;
  break;
 }

 if (hw->phy.multispeed_fiber) {
  *speed |= IXGBE_LINK_SPEED_10GB_FULL |
     IXGBE_LINK_SPEED_1GB_FULL;




  if (hw->phy.media_type == ixgbe_media_type_fiber_qsfp)
   *autoneg = FALSE;
  else
   *autoneg = TRUE;
 }

out:
 return status;
}
