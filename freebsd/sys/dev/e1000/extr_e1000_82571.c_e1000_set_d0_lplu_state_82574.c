
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_PHY_CTRL_D0A_LPLU ;
 int E1000_POEMB ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_set_d0_lplu_state_82574(struct e1000_hw *hw, bool active)
{
 u32 data = E1000_READ_REG(hw, E1000_POEMB);

 DEBUGFUNC("e1000_set_d0_lplu_state_82574");

 if (active)
  data |= E1000_PHY_CTRL_D0A_LPLU;
 else
  data &= ~E1000_PHY_CTRL_D0A_LPLU;

 E1000_WRITE_REG(hw, E1000_POEMB, data);
 return E1000_SUCCESS;
}
