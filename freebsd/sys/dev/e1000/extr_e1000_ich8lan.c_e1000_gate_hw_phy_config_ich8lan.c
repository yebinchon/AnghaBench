
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;
 int E1000_EXTCNF_CTRL ;
 int E1000_EXTCNF_CTRL_GATE_PHY_CFG ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 scalar_t__ e1000_pch2lan ;

__attribute__((used)) static void e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate)
{
 u32 extcnf_ctrl;

 DEBUGFUNC("e1000_gate_hw_phy_config_ich8lan");

 if (hw->mac.type < e1000_pch2lan)
  return;

 extcnf_ctrl = E1000_READ_REG(hw, E1000_EXTCNF_CTRL);

 if (gate)
  extcnf_ctrl |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
 else
  extcnf_ctrl &= ~E1000_EXTCNF_CTRL_GATE_PHY_CFG;

 E1000_WRITE_REG(hw, E1000_EXTCNF_CTRL, extcnf_ctrl);
}
