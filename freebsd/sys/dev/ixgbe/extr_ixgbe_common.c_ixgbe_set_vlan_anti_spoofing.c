
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int IXGBE_PFVFSPOOF (int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SPOOF_VLANAS_SHIFT ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_mac_82598EB ;

void ixgbe_set_vlan_anti_spoofing(struct ixgbe_hw *hw, bool enable, int vf)
{
 int vf_target_reg = vf >> 3;
 int vf_target_shift = vf % 8 + IXGBE_SPOOF_VLANAS_SHIFT;
 u32 pfvfspoof;

 if (hw->mac.type == ixgbe_mac_82598EB)
  return;

 pfvfspoof = IXGBE_READ_REG(hw, IXGBE_PFVFSPOOF(vf_target_reg));
 if (enable)
  pfvfspoof |= (1 << vf_target_shift);
 else
  pfvfspoof &= ~(1 << vf_target_shift);
 IXGBE_WRITE_REG(hw, IXGBE_PFVFSPOOF(vf_target_reg), pfvfspoof);
}
