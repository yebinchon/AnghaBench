
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ixgbe_dcb_tc_config {TYPE_1__* path; } ;
struct ixgbe_dcb_config {struct ixgbe_dcb_tc_config* tc_config; } ;
struct TYPE_2__ {int tsa; } ;


 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;

void ixgbe_dcb_unpack_tsa_cee(struct ixgbe_dcb_config *cfg, int direction,
      u8 *tsa)
{
 struct ixgbe_dcb_tc_config *tc_config = &cfg->tc_config[0];
 int tc;

 for (tc = 0; tc < IXGBE_DCB_MAX_TRAFFIC_CLASS; tc++)
  tsa[tc] = tc_config[tc].path[direction].tsa;
}
