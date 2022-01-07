
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_BLK_PHY_RESET ;
 int E1000_MANC ;
 int E1000_MANC_BLK_PHY_RST_ON_IDE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;

s32 e1000_check_reset_block_generic(struct e1000_hw *hw)
{
 u32 manc;

 DEBUGFUNC("e1000_check_reset_block");

 manc = E1000_READ_REG(hw, E1000_MANC);

 return (manc & E1000_MANC_BLK_PHY_RST_ON_IDE) ?
        E1000_BLK_PHY_RESET : E1000_SUCCESS;
}
