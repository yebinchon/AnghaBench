
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_BLK_PHY_RESET ;
 int E1000_FWSM ;
 int E1000_ICH_FWSM_RSPCIPHY ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int FALSE ;
 int TRUE ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_check_reset_block_ich8lan(struct e1000_hw *hw)
{
 u32 fwsm;
 bool blocked = FALSE;
 int i = 0;

 DEBUGFUNC("e1000_check_reset_block_ich8lan");

 do {
  fwsm = E1000_READ_REG(hw, E1000_FWSM);
  if (!(fwsm & E1000_ICH_FWSM_RSPCIPHY)) {
   blocked = TRUE;
   msec_delay(10);
   continue;
  }
  blocked = FALSE;
 } while (blocked && (i++ < 30));
 return blocked ? E1000_BLK_PHY_RESET : E1000_SUCCESS;
}
