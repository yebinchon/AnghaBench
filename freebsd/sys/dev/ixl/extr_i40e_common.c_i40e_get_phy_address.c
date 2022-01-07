
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ mdio_port_num; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;


 int I40E_GLGEN_MDIO_I2C_SEL (int) ;
 int rd32 (struct i40e_hw*,int ) ;

u8 i40e_get_phy_address(struct i40e_hw *hw, u8 dev_num)
{
 u8 port_num = (u8)hw->func_caps.mdio_port_num;
 u32 reg_val = rd32(hw, I40E_GLGEN_MDIO_I2C_SEL(port_num));

 return (u8)(reg_val >> ((dev_num + 1) * 5)) & 0x1f;
}
