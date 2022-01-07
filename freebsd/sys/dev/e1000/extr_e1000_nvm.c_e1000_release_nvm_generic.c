
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_REQ ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int e1000_stop_nvm (struct e1000_hw*) ;

void e1000_release_nvm_generic(struct e1000_hw *hw)
{
 u32 eecd;

 DEBUGFUNC("e1000_release_nvm_generic");

 e1000_stop_nvm(hw);

 eecd = E1000_READ_REG(hw, E1000_EECD);
 eecd &= ~E1000_EECD_REQ;
 E1000_WRITE_REG(hw, E1000_EECD, eecd);
}
