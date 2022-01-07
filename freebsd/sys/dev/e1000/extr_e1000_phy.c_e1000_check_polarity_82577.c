
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct e1000_phy_info {int cable_polarity; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int I82577_PHY_STATUS2_REV_POLARITY ;
 int I82577_PHY_STATUS_2 ;
 int e1000_rev_polarity_normal ;
 int e1000_rev_polarity_reversed ;
 int stub1 (struct e1000_hw*,int ,int*) ;

s32 e1000_check_polarity_82577(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;

 DEBUGFUNC("e1000_check_polarity_82577");

 ret_val = phy->ops.read_reg(hw, I82577_PHY_STATUS_2, &data);

 if (!ret_val)
  phy->cable_polarity = ((data & I82577_PHY_STATUS2_REV_POLARITY)
           ? e1000_rev_polarity_reversed
           : e1000_rev_polarity_normal);

 return ret_val;
}
