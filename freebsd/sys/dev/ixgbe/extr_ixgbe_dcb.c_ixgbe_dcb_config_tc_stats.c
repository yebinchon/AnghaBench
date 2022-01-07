
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_dcb_config_tc_stats_82598 (struct ixgbe_hw*) ;
 int ixgbe_dcb_config_tc_stats_82599 (struct ixgbe_hw*,int *) ;







s32 ixgbe_dcb_config_tc_stats(struct ixgbe_hw *hw)
{
 s32 ret = IXGBE_NOT_IMPLEMENTED;
 switch (hw->mac.type) {
 case 133:
  ret = ixgbe_dcb_config_tc_stats_82598(hw);
  break;
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:

  ret = ixgbe_dcb_config_tc_stats_82599(hw, ((void*)0));
  break;

 default:
  break;
 }
 return ret;
}
