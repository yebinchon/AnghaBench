
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int speeds_supported; scalar_t__ media_type; scalar_t__ sfp_type; int nw_mng_if_sel; scalar_t__ multispeed_fiber; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {int device_id; TYPE_2__ phy; TYPE_1__ mac; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int FALSE ;
 int IXGBE_DEV_ID_X550EM_A_KR_L ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_2_5GB_FULL ;
 int IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G ;
 int IXGBE_SUCCESS ;
 int TRUE ;
 int ixgbe_mac_X550EM_a ;
 scalar_t__ ixgbe_media_type_fiber ;

 int ixgbe_phy_fw ;


 scalar_t__ ixgbe_sfp_type_1g_lx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_lx_core1 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core1 ;

s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
           ixgbe_link_speed *speed,
           bool *autoneg)
{
 DEBUGFUNC("ixgbe_get_link_capabilities_X550em");


 if (hw->phy.type == ixgbe_phy_fw) {
  *autoneg = TRUE;
  *speed = hw->phy.speeds_supported;
  return 0;
 }


 if (hw->phy.media_type == ixgbe_media_type_fiber) {


  *autoneg = FALSE;


  if (hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1
      || hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
      hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1) {
   *speed = IXGBE_LINK_SPEED_1GB_FULL;
   return IXGBE_SUCCESS;
  }


  if (hw->phy.multispeed_fiber)
   *speed = IXGBE_LINK_SPEED_10GB_FULL |
     IXGBE_LINK_SPEED_1GB_FULL;
  else
   *speed = IXGBE_LINK_SPEED_10GB_FULL;
 } else {
  switch (hw->phy.type) {
  case 130:
  case 129:
   *speed = IXGBE_LINK_SPEED_1GB_FULL;
   break;
  case 128:
   if (hw->mac.type == ixgbe_mac_X550EM_a) {

    if (hw->phy.nw_mng_if_sel &
        IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G) {
     *speed = IXGBE_LINK_SPEED_2_5GB_FULL;
     break;
    } else if (hw->device_id ==
         IXGBE_DEV_ID_X550EM_A_KR_L) {
     *speed = IXGBE_LINK_SPEED_1GB_FULL;
     break;
    }
   }

  default:
   *speed = IXGBE_LINK_SPEED_10GB_FULL |
     IXGBE_LINK_SPEED_1GB_FULL;
   break;
  }
  *autoneg = TRUE;
 }

 return IXGBE_SUCCESS;
}
