
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ixgbe_dcb_tc_config {TYPE_1__* path; } ;
struct ixgbe_dcb_config {struct ixgbe_dcb_tc_config* tc_config; } ;
struct TYPE_2__ {int data_credits_refill; } ;


 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;

void ixgbe_dcb_unpack_refill_cee(struct ixgbe_dcb_config *cfg, int direction,
        u16 *refill)
{
 struct ixgbe_dcb_tc_config *tc_config = &cfg->tc_config[0];
 int tc;

 for (tc = 0; tc < IXGBE_DCB_MAX_TRAFFIC_CLASS; tc++)
  refill[tc] = tc_config[tc].path[direction].data_credits_refill;
}
