
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_MBX ;
 int IXGBE_MBVFICR (int ) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static s32 ixgbe_check_for_bit_pf(struct ixgbe_hw *hw, u32 mask, s32 index)
{
 u32 mbvficr = IXGBE_READ_REG(hw, IXGBE_MBVFICR(index));
 s32 ret_val = IXGBE_ERR_MBX;

 if (mbvficr & mask) {
  ret_val = IXGBE_SUCCESS;
  IXGBE_WRITE_REG(hw, IXGBE_MBVFICR(index), mask);
 }

 return ret_val;
}
