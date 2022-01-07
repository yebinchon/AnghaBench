
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_PFVFSPOOF (int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SPOOF_ETHERTYPEAS_SHIFT ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

void ixgbe_set_ethertype_anti_spoofing_X550(struct ixgbe_hw *hw,
  bool enable, int vf)
{
 int vf_target_reg = vf >> 3;
 int vf_target_shift = vf % 8 + IXGBE_SPOOF_ETHERTYPEAS_SHIFT;
 u32 pfvfspoof;

 DEBUGFUNC("ixgbe_set_ethertype_anti_spoofing_X550");

 pfvfspoof = IXGBE_READ_REG(hw, IXGBE_PFVFSPOOF(vf_target_reg));
 if (enable)
  pfvfspoof |= (1 << vf_target_shift);
 else
  pfvfspoof &= ~(1 << vf_target_shift);

 IXGBE_WRITE_REG(hw, IXGBE_PFVFSPOOF(vf_target_reg), pfvfspoof);
}
