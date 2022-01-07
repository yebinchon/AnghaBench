
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int multispeed_fiber; } ;
struct ixgbe_hw {int device_id; TYPE_1__ phy; } ;
typedef enum ixgbe_media_type { ____Placeholder_ixgbe_media_type } ixgbe_media_type ;


 int DEBUGFUNC (char*) ;
 int TRUE ;
 int ixgbe_media_type_backplane ;
 int ixgbe_media_type_copper ;
 int ixgbe_media_type_cx4 ;
 int ixgbe_media_type_fiber ;
 int ixgbe_media_type_fiber_fixed ;
 int ixgbe_media_type_fiber_qsfp ;
 int ixgbe_media_type_unknown ;



enum ixgbe_media_type ixgbe_get_media_type_82599(struct ixgbe_hw *hw)
{
 enum ixgbe_media_type media_type;

 DEBUGFUNC("ixgbe_get_media_type_82599");


 switch (hw->phy.type) {
 case 129:
 case 128:
  media_type = ixgbe_media_type_copper;
  goto out;
 default:
  break;
 }

 switch (hw->device_id) {
 case 139:
 case 138:
 case 142:
 case 140:
 case 144:
 case 130:

  media_type = ixgbe_media_type_backplane;
  break;
 case 136:
 case 134:
 case 135:
 case 133:
 case 132:
 case 145:
  media_type = ixgbe_media_type_fiber;
  break;
 case 141:
  media_type = ixgbe_media_type_cx4;
  break;
 case 131:
  media_type = ixgbe_media_type_copper;
  break;
 case 137:
  media_type = ixgbe_media_type_fiber_qsfp;
  break;
 case 143:
  media_type = ixgbe_media_type_fiber_fixed;
  hw->phy.multispeed_fiber = TRUE;
  break;
 default:
  media_type = ixgbe_media_type_unknown;
  break;
 }
out:
 return media_type;
}
