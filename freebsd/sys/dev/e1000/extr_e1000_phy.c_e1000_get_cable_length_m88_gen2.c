
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* write_reg ) (struct e1000_hw*,scalar_t__,int) ;int (* read_reg ) (struct e1000_hw*,scalar_t__,int*) ;} ;
struct e1000_phy_info {int id; int min_cable_length; int max_cable_length; int cable_length; TYPE_1__ ops; scalar_t__ addr; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ERR_PHY ;
 int GS40G_PAGE_SHIFT ;


 scalar_t__ I347AT4_PAGE_SELECT ;
 scalar_t__ I347AT4_PCDC ;
 int I347AT4_PCDC_CABLE_LENGTH_UNIT ;
 scalar_t__ I347AT4_PCDL ;
 int M88E1000_CABLE_LENGTH_TABLE_SIZE ;
 int M88E1000_PSSR_CABLE_LENGTH ;
 int M88E1000_PSSR_CABLE_LENGTH_SHIFT ;

 scalar_t__ M88E1112_VCT_DSP_DISTANCE ;



 void** e1000_m88_cable_length_table ;
 int stub1 (struct e1000_hw*,scalar_t__,int*) ;
 int stub10 (struct e1000_hw*,scalar_t__,int*) ;
 int stub11 (struct e1000_hw*,scalar_t__,int) ;
 int stub2 (struct e1000_hw*,scalar_t__,int*) ;
 int stub3 (struct e1000_hw*,scalar_t__,int*) ;
 int stub4 (struct e1000_hw*,scalar_t__,int) ;
 int stub5 (struct e1000_hw*,scalar_t__,int*) ;
 int stub6 (struct e1000_hw*,scalar_t__,int*) ;
 int stub7 (struct e1000_hw*,scalar_t__,int) ;
 int stub8 (struct e1000_hw*,scalar_t__,int*) ;
 int stub9 (struct e1000_hw*,scalar_t__,int) ;

s32 e1000_get_cable_length_m88_gen2(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data, phy_data2, is_cm;
 u16 index, default_page;

 DEBUGFUNC("e1000_get_cable_length_m88_gen2");

 switch (hw->phy.id) {
 case 133:

  ret_val = phy->ops.read_reg(hw, (0x7 << GS40G_PAGE_SHIFT) +
         (I347AT4_PCDL + phy->addr),
         &phy_data);
  if (ret_val)
   return ret_val;


  ret_val = phy->ops.read_reg(hw, (0x7 << GS40G_PAGE_SHIFT) +
         I347AT4_PCDC, &phy_data2);
  if (ret_val)
   return ret_val;

  is_cm = !(phy_data2 & I347AT4_PCDC_CABLE_LENGTH_UNIT);


  phy->min_cable_length = phy_data / (is_cm ? 100 : 1);
  phy->max_cable_length = phy_data / (is_cm ? 100 : 1);
  phy->cable_length = phy_data / (is_cm ? 100 : 1);
  break;
 case 128:
 case 129:
 case 130:
 case 132:

  ret_val = phy->ops.read_reg(hw, I347AT4_PAGE_SELECT,
         &default_page);
  if (ret_val)
   return ret_val;

  ret_val = phy->ops.write_reg(hw, I347AT4_PAGE_SELECT, 0x07);
  if (ret_val)
   return ret_val;


  ret_val = phy->ops.read_reg(hw, (I347AT4_PCDL + phy->addr),
         &phy_data);
  if (ret_val)
   return ret_val;


  ret_val = phy->ops.read_reg(hw, I347AT4_PCDC, &phy_data2);
  if (ret_val)
   return ret_val;

  is_cm = !(phy_data2 & I347AT4_PCDC_CABLE_LENGTH_UNIT);


  phy->min_cable_length = phy_data / (is_cm ? 100 : 1);
  phy->max_cable_length = phy_data / (is_cm ? 100 : 1);
  phy->cable_length = phy_data / (is_cm ? 100 : 1);


  ret_val = phy->ops.write_reg(hw, I347AT4_PAGE_SELECT,
          default_page);
  if (ret_val)
   return ret_val;
  break;

 case 131:

  ret_val = phy->ops.read_reg(hw, I347AT4_PAGE_SELECT,
         &default_page);
  if (ret_val)
   return ret_val;

  ret_val = phy->ops.write_reg(hw, I347AT4_PAGE_SELECT, 0x05);
  if (ret_val)
   return ret_val;

  ret_val = phy->ops.read_reg(hw, M88E1112_VCT_DSP_DISTANCE,
         &phy_data);
  if (ret_val)
   return ret_val;

  index = (phy_data & M88E1000_PSSR_CABLE_LENGTH) >>
   M88E1000_PSSR_CABLE_LENGTH_SHIFT;

  if (index >= M88E1000_CABLE_LENGTH_TABLE_SIZE - 1)
   return -E1000_ERR_PHY;

  phy->min_cable_length = e1000_m88_cable_length_table[index];
  phy->max_cable_length = e1000_m88_cable_length_table[index + 1];

  phy->cable_length = (phy->min_cable_length +
         phy->max_cable_length) / 2;


  ret_val = phy->ops.write_reg(hw, I347AT4_PAGE_SELECT,
          default_page);
  if (ret_val)
   return ret_val;

  break;
 default:
  return -E1000_ERR_PHY;
 }

 return ret_val;
}
