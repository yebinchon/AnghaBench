
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_EXTCNF_CTRL ;
 int E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static void
e1000_put_hw_semaphore_82574(struct e1000_hw *hw)
{
 u32 extcnf_ctrl;

 DEBUGFUNC("e1000_put_hw_semaphore_82574");

 extcnf_ctrl = E1000_READ_REG(hw, E1000_EXTCNF_CTRL);
 extcnf_ctrl &= ~E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP;
 E1000_WRITE_REG(hw, E1000_EXTCNF_CTRL, extcnf_ctrl);
}
