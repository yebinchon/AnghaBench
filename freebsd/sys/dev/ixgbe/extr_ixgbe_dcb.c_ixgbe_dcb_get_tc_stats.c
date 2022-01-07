
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ixgbe_hw_stats {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_dcb_get_tc_stats_82598 (struct ixgbe_hw*,struct ixgbe_hw_stats*,int ) ;
 int ixgbe_dcb_get_tc_stats_82599 (struct ixgbe_hw*,struct ixgbe_hw_stats*,int ) ;







s32 ixgbe_dcb_get_tc_stats(struct ixgbe_hw *hw, struct ixgbe_hw_stats *stats,
      u8 tc_count)
{
 s32 ret = IXGBE_NOT_IMPLEMENTED;
 switch (hw->mac.type) {
 case 133:
  ret = ixgbe_dcb_get_tc_stats_82598(hw, stats, tc_count);
  break;
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:

  ret = ixgbe_dcb_get_tc_stats_82599(hw, stats, tc_count);
  break;

 default:
  break;
 }
 return ret;
}
