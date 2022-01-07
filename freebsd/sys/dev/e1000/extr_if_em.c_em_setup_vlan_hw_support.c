
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct adapter {scalar_t__ num_vlans; scalar_t__* shadow_vfta; struct e1000_hw hw; } ;


 int E1000_CTRL ;
 int E1000_CTRL_VME ;
 int E1000_RCTL ;
 int E1000_RCTL_CFIEN ;
 int E1000_RCTL_VFE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_VFTA ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,scalar_t__) ;
 int EM_VFTA_SIZE ;

__attribute__((used)) static void
em_setup_vlan_hw_support(struct adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 reg;







 if (adapter->num_vlans == 0)
  return;





 for (int i = 0; i < EM_VFTA_SIZE; i++)
  if (adapter->shadow_vfta[i] != 0)
   E1000_WRITE_REG_ARRAY(hw, E1000_VFTA,
       i, adapter->shadow_vfta[i]);

 reg = E1000_READ_REG(hw, E1000_CTRL);
 reg |= E1000_CTRL_VME;
 E1000_WRITE_REG(hw, E1000_CTRL, reg);


 reg = E1000_READ_REG(hw, E1000_RCTL);
 reg &= ~E1000_RCTL_CFIEN;
 reg |= E1000_RCTL_VFE;
 E1000_WRITE_REG(hw, E1000_RCTL, reg);
}
