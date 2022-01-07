
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* read_reg ) (struct e1000_hw*,int,int*) ;} ;
struct e1000_phy_info {int cable_polarity; TYPE_1__ ops; scalar_t__ polarity_correction; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IFE_PESC_POLARITY_REVERSED ;
 int IFE_PHY_EXTENDED_STATUS_CONTROL ;
 int IFE_PHY_SPECIAL_CONTROL ;
 int IFE_PSC_FORCE_POLARITY ;
 int e1000_rev_polarity_normal ;
 int e1000_rev_polarity_reversed ;
 int stub1 (struct e1000_hw*,int,int*) ;

s32 e1000_check_polarity_ife(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data, offset, mask;

 DEBUGFUNC("e1000_check_polarity_ife");



 if (phy->polarity_correction) {
  offset = IFE_PHY_EXTENDED_STATUS_CONTROL;
  mask = IFE_PESC_POLARITY_REVERSED;
 } else {
  offset = IFE_PHY_SPECIAL_CONTROL;
  mask = IFE_PSC_FORCE_POLARITY;
 }

 ret_val = phy->ops.read_reg(hw, offset, &phy_data);

 if (!ret_val)
  phy->cable_polarity = ((phy_data & mask)
           ? e1000_rev_polarity_reversed
           : e1000_rev_polarity_normal);

 return ret_val;
}
