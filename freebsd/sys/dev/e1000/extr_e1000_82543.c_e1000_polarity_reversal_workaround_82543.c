
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 int M88E1000_PHY_GEN_CONTROL ;
 int M88E1000_PHY_PAGE_SELECT ;
 scalar_t__ MII_SR_LINK_STATUS ;
 scalar_t__ PHY_FORCE_TIME ;
 int PHY_STATUS ;
 scalar_t__ e1000_phy_has_link_generic (struct e1000_hw*,scalar_t__,int,int*) ;
 int msec_delay_irq (int) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub10 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub9 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_polarity_reversal_workaround_82543(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 u16 mii_status_reg;
 u16 i;
 bool link;

 if (!(hw->phy.ops.write_reg))
  goto out;





 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0019);
 if (ret_val)
  goto out;
 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFFFF);
 if (ret_val)
  goto out;

 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0000);
 if (ret_val)
  goto out;





 for (i = PHY_FORCE_TIME; i > 0; i--) {





  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &mii_status_reg);
  if (ret_val)
   goto out;

  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &mii_status_reg);
  if (ret_val)
   goto out;

  if (!(mii_status_reg & ~MII_SR_LINK_STATUS))
   break;
  msec_delay_irq(100);
 }


 msec_delay_irq(1000);



 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0019);
 if (ret_val)
  goto out;
 msec_delay_irq(50);
 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFFF0);
 if (ret_val)
  goto out;
 msec_delay_irq(50);
 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFF00);
 if (ret_val)
  goto out;
 msec_delay_irq(50);
 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0x0000);
 if (ret_val)
  goto out;

 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0000);
 if (ret_val)
  goto out;





 ret_val = e1000_phy_has_link_generic(hw, PHY_FORCE_TIME, 100000, &link);
 if (ret_val)
  goto out;

out:
 return ret_val;
}
