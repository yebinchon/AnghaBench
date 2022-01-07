
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EXTCNF_CTRL ;
 int E1000_EXTCNF_CTRL_SWFLAG ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;

__attribute__((used)) static void e1000_release_swflag_ich8lan(struct e1000_hw *hw)
{
 u32 extcnf_ctrl;

 DEBUGFUNC("e1000_release_swflag_ich8lan");

 extcnf_ctrl = E1000_READ_REG(hw, E1000_EXTCNF_CTRL);

 if (extcnf_ctrl & E1000_EXTCNF_CTRL_SWFLAG) {
  extcnf_ctrl &= ~E1000_EXTCNF_CTRL_SWFLAG;
  E1000_WRITE_REG(hw, E1000_EXTCNF_CTRL, extcnf_ctrl);
 } else {
  DEBUGOUT("Semaphore unexpectedly released by sw/fw/hw\n");
 }
}
