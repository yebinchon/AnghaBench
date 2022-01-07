
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ixgbe_hw_stats {int * qbrc; int * qprc; int * qbtc; int * qptc; } ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {scalar_t__ out_overflow_discards; scalar_t__ in_overflow_discards; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_ERR_PARAM ;
 int IXGBE_QBRC (int) ;
 int IXGBE_QBTC (int) ;
 int IXGBE_QPRC (int) ;
 int IXGBE_QPTC (int) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 TYPE_1__** tc_stats_array ;
 size_t up ;

s32 ixgbe_dcb_get_tc_stats_82598(struct ixgbe_hw *hw,
     struct ixgbe_hw_stats *stats,
     u8 tc_count)
{
 int tc;

 DEBUGFUNC("dcb_get_tc_stats");

 if (tc_count > IXGBE_DCB_MAX_TRAFFIC_CLASS)
  return IXGBE_ERR_PARAM;


 for (tc = 0; tc < tc_count; tc++) {

  stats->qptc[tc] += IXGBE_READ_REG(hw, IXGBE_QPTC(tc));

  stats->qbtc[tc] += IXGBE_READ_REG(hw, IXGBE_QBTC(tc));

  stats->qprc[tc] += IXGBE_READ_REG(hw, IXGBE_QPRC(tc));

  stats->qbrc[tc] += IXGBE_READ_REG(hw, IXGBE_QBRC(tc));
 }

 return IXGBE_SUCCESS;
}
