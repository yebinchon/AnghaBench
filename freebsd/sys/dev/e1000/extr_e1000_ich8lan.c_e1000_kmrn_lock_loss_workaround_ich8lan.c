
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* reset ) (struct e1000_hw*) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct e1000_dev_spec_ich8lan {int kmrn_lock_loss_workaround_enabled; } ;
struct TYPE_4__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_ERR_PHY ;
 int E1000_PHY_CTRL ;
 int E1000_PHY_CTRL_GBE_DISABLE ;
 int E1000_PHY_CTRL_NOND0A_GBE_DISABLE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int IGP3_KMRN_DIAG ;
 int IGP3_KMRN_DIAG_PCS_LOCK_LOSS ;
 int e1000_gig_downshift_workaround_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 int msec_delay_irq (int) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int*) ;
 int stub3 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_kmrn_lock_loss_workaround_ich8lan(struct e1000_hw *hw)
{
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 u32 phy_ctrl;
 s32 ret_val;
 u16 i, data;
 bool link;

 DEBUGFUNC("e1000_kmrn_lock_loss_workaround_ich8lan");

 if (!dev_spec->kmrn_lock_loss_workaround_enabled)
  return E1000_SUCCESS;





 ret_val = e1000_phy_has_link_generic(hw, 1, 0, &link);
 if (!link)
  return E1000_SUCCESS;

 for (i = 0; i < 10; i++) {

  ret_val = hw->phy.ops.read_reg(hw, IGP3_KMRN_DIAG, &data);
  if (ret_val)
   return ret_val;

  ret_val = hw->phy.ops.read_reg(hw, IGP3_KMRN_DIAG, &data);
  if (ret_val)
   return ret_val;


  if (!(data & IGP3_KMRN_DIAG_PCS_LOCK_LOSS))
   return E1000_SUCCESS;


  hw->phy.ops.reset(hw);
  msec_delay_irq(5);
 }

 phy_ctrl = E1000_READ_REG(hw, E1000_PHY_CTRL);
 phy_ctrl |= (E1000_PHY_CTRL_GBE_DISABLE |
       E1000_PHY_CTRL_NOND0A_GBE_DISABLE);
 E1000_WRITE_REG(hw, E1000_PHY_CTRL, phy_ctrl);




 e1000_gig_downshift_workaround_ich8lan(hw);


 return -E1000_ERR_PHY;
}
