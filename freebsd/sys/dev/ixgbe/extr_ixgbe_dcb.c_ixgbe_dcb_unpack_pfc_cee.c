
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ixgbe_dcb_tc_config {scalar_t__ pfc; } ;
struct ixgbe_dcb_config {struct ixgbe_dcb_tc_config* tc_config; } ;


 int IXGBE_DCB_MAX_USER_PRIORITY ;
 scalar_t__ ixgbe_dcb_pfc_disabled ;

void ixgbe_dcb_unpack_pfc_cee(struct ixgbe_dcb_config *cfg, u8 *map, u8 *pfc_up)
{
 struct ixgbe_dcb_tc_config *tc_config = &cfg->tc_config[0];
 int up;





 for (*pfc_up = 0, up = 0; up < IXGBE_DCB_MAX_USER_PRIORITY; up++) {
  if (tc_config[map[up]].pfc != ixgbe_dcb_pfc_disabled)
   *pfc_up |= 1 << up;
 }
}
