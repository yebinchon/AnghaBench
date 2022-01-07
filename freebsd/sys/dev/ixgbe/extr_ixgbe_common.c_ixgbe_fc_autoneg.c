
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int requested_mode; int current_mode; int fc_was_autonegged; scalar_t__ disable_fc_autoneg; } ;
struct TYPE_7__ {int media_type; } ;
struct TYPE_5__ {int (* check_link ) (struct ixgbe_hw*,int *,int*,int ) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ fc; TYPE_3__ phy; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int FALSE ;
 int IXGBE_ERROR_SOFTWARE ;
 int IXGBE_ERROR_UNSUPPORTED ;
 scalar_t__ IXGBE_ERR_FC_NOT_NEGOTIATED ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 scalar_t__ IXGBE_SUCCESS ;
 int TRUE ;
 int ixgbe_device_supports_autoneg_fc (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_fc_autoneg_backplane (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_fc_autoneg_copper (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_fc_autoneg_fiber (struct ixgbe_hw*) ;





 int stub1 (struct ixgbe_hw*,int *,int*,int ) ;

void ixgbe_fc_autoneg(struct ixgbe_hw *hw)
{
 s32 ret_val = IXGBE_ERR_FC_NOT_NEGOTIATED;
 ixgbe_link_speed speed;
 bool link_up;

 DEBUGFUNC("ixgbe_fc_autoneg");







 if (hw->fc.disable_fc_autoneg) {
  ERROR_REPORT1(IXGBE_ERROR_UNSUPPORTED,
        "Flow control autoneg is disabled");
  goto out;
 }

 hw->mac.ops.check_link(hw, &speed, &link_up, FALSE);
 if (!link_up) {
  ERROR_REPORT1(IXGBE_ERROR_SOFTWARE, "The link is down");
  goto out;
 }

 switch (hw->phy.media_type) {

 case 129:
 case 128:
 case 130:
  if (speed == IXGBE_LINK_SPEED_1GB_FULL)
   ret_val = ixgbe_fc_autoneg_fiber(hw);
  break;


 case 132:
  ret_val = ixgbe_fc_autoneg_backplane(hw);
  break;


 case 131:
  if (ixgbe_device_supports_autoneg_fc(hw))
   ret_val = ixgbe_fc_autoneg_copper(hw);
  break;

 default:
  break;
 }

out:
 if (ret_val == IXGBE_SUCCESS) {
  hw->fc.fc_was_autonegged = TRUE;
 } else {
  hw->fc.fc_was_autonegged = FALSE;
  hw->fc.current_mode = hw->fc.requested_mode;
 }
}
