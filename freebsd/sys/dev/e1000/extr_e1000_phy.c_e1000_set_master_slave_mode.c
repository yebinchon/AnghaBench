
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct TYPE_4__ {int original_ms_type; int ms_type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int CR_1000T_MS_ENABLE ;
 int CR_1000T_MS_VALUE ;
 int PHY_1000T_CTRL ;



 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_set_master_slave_mode(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_data;


 ret_val = hw->phy.ops.read_reg(hw, PHY_1000T_CTRL, &phy_data);
 if (ret_val)
  return ret_val;


 hw->phy.original_ms_type = (phy_data & CR_1000T_MS_ENABLE) ?
       ((phy_data & CR_1000T_MS_VALUE) ?
        129 :
        128) : 130;

 switch (hw->phy.ms_type) {
 case 129:
  phy_data |= (CR_1000T_MS_ENABLE | CR_1000T_MS_VALUE);
  break;
 case 128:
  phy_data |= CR_1000T_MS_ENABLE;
  phy_data &= ~(CR_1000T_MS_VALUE);
  break;
 case 130:
  phy_data &= ~CR_1000T_MS_ENABLE;

 default:
  break;
 }

 return hw->phy.ops.write_reg(hw, PHY_1000T_CTRL, phy_data);
}
