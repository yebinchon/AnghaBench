
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int type; scalar_t__ max_link_up_time; } ;
struct ixgbe_hw {int device_id; TYPE_1__ mac; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT2 (char*,scalar_t__,scalar_t__) ;
 void* FALSE ;
 int IXGBE_DEV_ID_X550EM_A_1G_T ;
 int IXGBE_DEV_ID_X550EM_A_1G_T_L ;
 int IXGBE_ESDP ;
 scalar_t__ IXGBE_ESDP_SDP0 ;
 scalar_t__ IXGBE_ESDP_SDP2 ;
 int IXGBE_LINKS ;




 scalar_t__ IXGBE_LINKS_SPEED_82599 ;
 scalar_t__ IXGBE_LINKS_SPEED_NON_STD ;
 scalar_t__ IXGBE_LINKS_UP ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_10_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_2_5GB_FULL ;
 int IXGBE_LINK_SPEED_5GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int TRUE ;

 int ixgbe_mac_X550 ;


 scalar_t__ ixgbe_need_crosstalk_fix (struct ixgbe_hw*) ;
 int msec_delay (int) ;

s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
     bool *link_up, bool link_up_wait_to_complete)
{
 u32 links_reg, links_orig;
 u32 i;

 DEBUGFUNC("ixgbe_check_mac_link_generic");




 if (ixgbe_need_crosstalk_fix(hw)) {
  u32 sfp_cage_full;

  switch (hw->mac.type) {
  case 130:
   sfp_cage_full = IXGBE_READ_REG(hw, IXGBE_ESDP) &
     IXGBE_ESDP_SDP2;
   break;
  case 128:
  case 129:
   sfp_cage_full = IXGBE_READ_REG(hw, IXGBE_ESDP) &
     IXGBE_ESDP_SDP0;
   break;
  default:

   sfp_cage_full = FALSE;
   break;
  }

  if (!sfp_cage_full) {
   *link_up = FALSE;
   *speed = IXGBE_LINK_SPEED_UNKNOWN;
   return IXGBE_SUCCESS;
  }
 }


 links_orig = IXGBE_READ_REG(hw, IXGBE_LINKS);

 links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);

 if (links_orig != links_reg) {
  DEBUGOUT2("LINKS changed from %08X to %08X\n",
     links_orig, links_reg);
 }

 if (link_up_wait_to_complete) {
  for (i = 0; i < hw->mac.max_link_up_time; i++) {
   if (links_reg & IXGBE_LINKS_UP) {
    *link_up = TRUE;
    break;
   } else {
    *link_up = FALSE;
   }
   msec_delay(100);
   links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);
  }
 } else {
  if (links_reg & IXGBE_LINKS_UP)
   *link_up = TRUE;
  else
   *link_up = FALSE;
 }

 switch (links_reg & IXGBE_LINKS_SPEED_82599) {
 case 133:
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
  if (hw->mac.type >= ixgbe_mac_X550) {
   if (links_reg & IXGBE_LINKS_SPEED_NON_STD)
    *speed = IXGBE_LINK_SPEED_2_5GB_FULL;
  }
  break;
 case 131:
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  break;
 case 134:
  *speed = IXGBE_LINK_SPEED_100_FULL;
  if (hw->mac.type == ixgbe_mac_X550) {
   if (links_reg & IXGBE_LINKS_SPEED_NON_STD)
    *speed = IXGBE_LINK_SPEED_5GB_FULL;
  }
  break;
 case 132:
  *speed = IXGBE_LINK_SPEED_UNKNOWN;
  if (hw->device_id == IXGBE_DEV_ID_X550EM_A_1G_T ||
      hw->device_id == IXGBE_DEV_ID_X550EM_A_1G_T_L)
   *speed = IXGBE_LINK_SPEED_10_FULL;
  break;
 default:
  *speed = IXGBE_LINK_SPEED_UNKNOWN;
 }

 return IXGBE_SUCCESS;
}
