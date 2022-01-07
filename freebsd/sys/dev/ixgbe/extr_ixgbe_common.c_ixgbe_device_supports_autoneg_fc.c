
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* check_link ) (struct ixgbe_hw*,int *,int*,int) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct TYPE_6__ {int media_type; } ;
struct ixgbe_hw {int device_id; TYPE_2__ mac; TYPE_3__ phy; } ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT2 (int ,char*,int ) ;
 int FALSE ;
 int IXGBE_DEV_ID_X550EM_X_XFI ;


 int IXGBE_ERROR_UNSUPPORTED ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int TRUE ;





 int stub1 (struct ixgbe_hw*,int *,int*,int) ;

bool ixgbe_device_supports_autoneg_fc(struct ixgbe_hw *hw)
{
 bool supported = FALSE;
 ixgbe_link_speed speed;
 bool link_up;

 DEBUGFUNC("ixgbe_device_supports_autoneg_fc");

 switch (hw->phy.media_type) {
 case 129:
 case 128:
 case 130:

  switch (hw->device_id) {
  case 137:
  case 136:
  case 139:
  case 138:
   supported = FALSE;
   break;
  default:
   hw->mac.ops.check_link(hw, &speed, &link_up, FALSE);

   if (link_up)
    supported = speed == IXGBE_LINK_SPEED_1GB_FULL ?
    TRUE : FALSE;
   else
    supported = TRUE;
  }

  break;
 case 132:
  if (hw->device_id == IXGBE_DEV_ID_X550EM_X_XFI)
   supported = FALSE;
  else
   supported = TRUE;
  break;
 case 131:

  switch (hw->device_id) {
  case 146:
  case 145:
  case 144:
  case 143:
  case 134:
  case 133:
  case 135:
  case 142:
  case 141:
  case 140:
   supported = TRUE;
   break;
  default:
   supported = FALSE;
  }
 default:
  break;
 }

 if (!supported)
  ERROR_REPORT2(IXGBE_ERROR_UNSUPPORTED,
         "Device %x does not support flow control autoneg",
         hw->device_id);

 return supported;
}
