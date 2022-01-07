
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* read_reg ) (struct e1000_hw*,int ,int*) ;int (* write_reg ) (struct e1000_hw*,int ,int) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_PHY_RST ;
 int E1000_PHY_CTRL ;
 int E1000_PHY_CTRL_GBE_DISABLE ;
 int E1000_PHY_CTRL_NOND0A_GBE_DISABLE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int IGP3_VR_CTRL ;
 int IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK ;
 int IGP3_VR_CTRL_MODE_SHUTDOWN ;
 int e1000_gig_downshift_workaround_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_ich8lan ;
 scalar_t__ e1000_phy_igp_3 ;
 int stub1 (struct e1000_hw*,int ,int*) ;
 int stub2 (struct e1000_hw*,int ,int) ;
 int stub3 (struct e1000_hw*,int ,int*) ;

void e1000_igp3_phy_powerdown_workaround_ich8lan(struct e1000_hw *hw)
{
 u32 reg;
 u16 data;
 u8 retry = 0;

 DEBUGFUNC("e1000_igp3_phy_powerdown_workaround_ich8lan");

 if (hw->phy.type != e1000_phy_igp_3)
  return;


 do {

  reg = E1000_READ_REG(hw, E1000_PHY_CTRL);
  reg |= (E1000_PHY_CTRL_GBE_DISABLE |
   E1000_PHY_CTRL_NOND0A_GBE_DISABLE);
  E1000_WRITE_REG(hw, E1000_PHY_CTRL, reg);




  if (hw->mac.type == e1000_ich8lan)
   e1000_gig_downshift_workaround_ich8lan(hw);


  hw->phy.ops.read_reg(hw, IGP3_VR_CTRL, &data);
  data &= ~IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK;
  hw->phy.ops.write_reg(hw, IGP3_VR_CTRL,
          data | IGP3_VR_CTRL_MODE_SHUTDOWN);


  hw->phy.ops.read_reg(hw, IGP3_VR_CTRL, &data);
  data &= IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK;
  if ((data == IGP3_VR_CTRL_MODE_SHUTDOWN) || retry)
   break;


  reg = E1000_READ_REG(hw, E1000_CTRL);
  E1000_WRITE_REG(hw, E1000_CTRL, reg | E1000_CTRL_PHY_RST);
  retry++;
 } while (retry);
}
