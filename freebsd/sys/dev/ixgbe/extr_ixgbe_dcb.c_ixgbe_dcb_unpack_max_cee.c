
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgbe_dcb_tc_config {int desc_credits_max; } ;
struct ixgbe_dcb_config {struct ixgbe_dcb_tc_config* tc_config; } ;


 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;

void ixgbe_dcb_unpack_max_cee(struct ixgbe_dcb_config *cfg, u16 *max)
{
 struct ixgbe_dcb_tc_config *tc_config = &cfg->tc_config[0];
 int tc;

 for (tc = 0; tc < IXGBE_DCB_MAX_TRAFFIC_CLASS; tc++)
  max[tc] = tc_config[tc].desc_credits_max;
}
