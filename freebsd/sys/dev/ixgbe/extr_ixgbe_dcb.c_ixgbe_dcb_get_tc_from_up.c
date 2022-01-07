
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ixgbe_dcb_tc_config {TYPE_2__* path; } ;
struct TYPE_3__ {int pg_tcs; } ;
struct ixgbe_dcb_config {TYPE_1__ num_tcs; struct ixgbe_dcb_tc_config* tc_config; } ;
struct TYPE_4__ {int up_to_tc_bitmap; } ;



u8 ixgbe_dcb_get_tc_from_up(struct ixgbe_dcb_config *cfg, int direction, u8 up)
{
 struct ixgbe_dcb_tc_config *tc_config = &cfg->tc_config[0];
 u8 prio_mask = 1 << up;
 u8 tc = cfg->num_tcs.pg_tcs;


 if (!tc)
  goto out;






 for (tc--; tc; tc--) {
  if (prio_mask & tc_config[tc].path[direction].up_to_tc_bitmap)
   break;
 }
out:
 return tc;
}
