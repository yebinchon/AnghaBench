
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixgbe_hw_stats {int * pxoffrxc; int * pxofftxc; } ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_ERR_PARAM ;
 int IXGBE_PXOFFRXCNT (int) ;
 int IXGBE_PXOFFTXC (int) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;

s32 ixgbe_dcb_get_pfc_stats_82599(struct ixgbe_hw *hw,
      struct ixgbe_hw_stats *stats,
      u8 tc_count)
{
 int tc;

 DEBUGFUNC("dcb_get_pfc_stats");

 if (tc_count > IXGBE_DCB_MAX_TRAFFIC_CLASS)
  return IXGBE_ERR_PARAM;

 for (tc = 0; tc < tc_count; tc++) {

  stats->pxofftxc[tc] += IXGBE_READ_REG(hw, IXGBE_PXOFFTXC(tc));

  stats->pxoffrxc[tc] += IXGBE_READ_REG(hw, IXGBE_PXOFFRXCNT(tc));
 }

 return IXGBE_SUCCESS;
}
