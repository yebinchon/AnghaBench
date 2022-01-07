
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ (* read ) (struct ixgbe_hw*,int*,int,int ) ;int (* check_for_rst ) (struct ixgbe_hw*,int ) ;} ;
struct ixgbe_mbx_info {int timeout; TYPE_1__ ops; } ;
struct ixgbe_mac_info {scalar_t__ type; scalar_t__ get_link_status; } ;
struct ixgbe_hw {struct ixgbe_mac_info mac; struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 scalar_t__ FALSE ;




 int IXGBE_LINKS_SPEED_82599 ;
 int IXGBE_LINKS_SPEED_NON_STD ;
 int IXGBE_LINKS_UP ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_10_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_2_5GB_FULL ;
 int IXGBE_LINK_SPEED_5GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_VFLINKS ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 scalar_t__ TRUE ;
 int UNREFERENCED_1PARAMETER (int) ;
 scalar_t__ ixgbe_mac_82599_vf ;
 scalar_t__ ixgbe_mac_X550 ;
 int stub1 (struct ixgbe_hw*,int ) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int*,int,int ) ;
 int usec_delay (int) ;

s32 ixgbe_check_mac_link_vf(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
       bool *link_up, bool autoneg_wait_to_complete)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 struct ixgbe_mac_info *mac = &hw->mac;
 s32 ret_val = IXGBE_SUCCESS;
 u32 links_reg;
 u32 in_msg = 0;
 UNREFERENCED_1PARAMETER(autoneg_wait_to_complete);


 if (!mbx->ops.check_for_rst(hw, 0) || !mbx->timeout)
  mac->get_link_status = TRUE;

 if (!mac->get_link_status)
  goto out;


 links_reg = IXGBE_READ_REG(hw, IXGBE_VFLINKS);
 if (!(links_reg & IXGBE_LINKS_UP))
  goto out;




 if (mac->type == ixgbe_mac_82599_vf) {
  int i;

  for (i = 0; i < 5; i++) {
   usec_delay(100);
   links_reg = IXGBE_READ_REG(hw, IXGBE_VFLINKS);

   if (!(links_reg & IXGBE_LINKS_UP))
    goto out;
  }
 }

 switch (links_reg & IXGBE_LINKS_SPEED_82599) {
 case 130:
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
  if (hw->mac.type >= ixgbe_mac_X550) {
   if (links_reg & IXGBE_LINKS_SPEED_NON_STD)
    *speed = IXGBE_LINK_SPEED_2_5GB_FULL;
  }
  break;
 case 128:
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  break;
 case 131:
  *speed = IXGBE_LINK_SPEED_100_FULL;
  if (hw->mac.type == ixgbe_mac_X550) {
   if (links_reg & IXGBE_LINKS_SPEED_NON_STD)
    *speed = IXGBE_LINK_SPEED_5GB_FULL;
  }
  break;
 case 129:
  *speed = IXGBE_LINK_SPEED_UNKNOWN;

  if (hw->mac.type >= ixgbe_mac_X550)
   *speed = IXGBE_LINK_SPEED_10_FULL;
  break;
 default:
  *speed = IXGBE_LINK_SPEED_UNKNOWN;
 }




 if (mbx->ops.read(hw, &in_msg, 1, 0))
  goto out;

 if (!(in_msg & IXGBE_VT_MSGTYPE_CTS)) {

  if (in_msg & IXGBE_VT_MSGTYPE_NACK)
   ret_val = -1;
  goto out;
 }


 if (!mbx->timeout) {
  ret_val = -1;
  goto out;
 }




 mac->get_link_status = FALSE;

out:
 *link_up = !mac->get_link_status;
 return ret_val;
}
