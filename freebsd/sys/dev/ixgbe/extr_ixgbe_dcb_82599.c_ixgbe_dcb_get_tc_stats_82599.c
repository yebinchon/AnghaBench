
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ixgbe_hw_stats {int* qbtc; int* qbrc; int * qprdc; int * qprc; int * qptc; } ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_ERR_PARAM ;
 int IXGBE_QBRC_H (int) ;
 int IXGBE_QBRC_L (int) ;
 int IXGBE_QBTC_H (int) ;
 int IXGBE_QBTC_L (int) ;
 int IXGBE_QPRC (int) ;
 int IXGBE_QPRDC (int) ;
 int IXGBE_QPTC (int) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;

s32 ixgbe_dcb_get_tc_stats_82599(struct ixgbe_hw *hw,
     struct ixgbe_hw_stats *stats,
     u8 tc_count)
{
 int tc;

 DEBUGFUNC("dcb_get_tc_stats");

 if (tc_count > IXGBE_DCB_MAX_TRAFFIC_CLASS)
  return IXGBE_ERR_PARAM;


 for (tc = 0; tc < tc_count; tc++) {

  stats->qptc[tc] += IXGBE_READ_REG(hw, IXGBE_QPTC(tc));

  stats->qbtc[tc] += IXGBE_READ_REG(hw, IXGBE_QBTC_L(tc));
  stats->qbtc[tc] +=
   (((u64)(IXGBE_READ_REG(hw, IXGBE_QBTC_H(tc)))) << 32);

  stats->qprc[tc] += IXGBE_READ_REG(hw, IXGBE_QPRC(tc));

  stats->qbrc[tc] += IXGBE_READ_REG(hw, IXGBE_QBRC_L(tc));
  stats->qbrc[tc] +=
   (((u64)(IXGBE_READ_REG(hw, IXGBE_QBRC_H(tc)))) << 32);


  stats->qprdc[tc] += IXGBE_READ_REG(hw, IXGBE_QPRDC(tc));
 }

 return IXGBE_SUCCESS;
}
