
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_FD ;
 int E1000_STATUS_SPEED_100 ;
 int E1000_STATUS_SPEED_1000 ;
 int E1000_SUCCESS ;
 int FULL_DUPLEX ;
 int HALF_DUPLEX ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;

s32 e1000_get_speed_and_duplex_copper_generic(struct e1000_hw *hw, u16 *speed,
           u16 *duplex)
{
 u32 status;

 DEBUGFUNC("e1000_get_speed_and_duplex_copper_generic");

 status = E1000_READ_REG(hw, E1000_STATUS);
 if (status & E1000_STATUS_SPEED_1000) {
  *speed = SPEED_1000;
  DEBUGOUT("1000 Mbs, ");
 } else if (status & E1000_STATUS_SPEED_100) {
  *speed = SPEED_100;
  DEBUGOUT("100 Mbs, ");
 } else {
  *speed = SPEED_10;
  DEBUGOUT("10 Mbs, ");
 }

 if (status & E1000_STATUS_FD) {
  *duplex = FULL_DUPLEX;
  DEBUGOUT("Full Duplex\n");
 } else {
  *duplex = HALF_DUPLEX;
  DEBUGOUT("Half Duplex\n");
 }

 return E1000_SUCCESS;
}
