
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_MRQC ;
 int IXGBE_MRQC_MRQE_MASK ;



 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WQBR_RX (int) ;
 int IXGBE_WQBR_TX (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

void ixgbe_restore_mdd_vf_X550(struct ixgbe_hw *hw, u32 vf)
{
 u32 idx, reg, num_qs, start_q, bitmask;

 DEBUGFUNC("ixgbe_restore_mdd_vf_X550");


 reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
 switch (reg & IXGBE_MRQC_MRQE_MASK) {
 case 128:
  num_qs = 8;
  bitmask = 0x000000FF;
  break;
 case 130:
 case 129:
  num_qs = 4;
  bitmask = 0x0000000F;
  break;
 default:
  num_qs = 2;
  bitmask = 0x00000003;
  break;
 }
 start_q = vf * num_qs;


 idx = start_q / 32;
 reg = 0;
 reg |= (bitmask << (start_q % 32));
 IXGBE_WRITE_REG(hw, IXGBE_WQBR_TX(idx), reg);
 IXGBE_WRITE_REG(hw, IXGBE_WQBR_RX(idx), reg);
}
