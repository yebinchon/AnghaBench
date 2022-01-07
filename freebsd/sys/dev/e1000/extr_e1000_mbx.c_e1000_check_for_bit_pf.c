
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_ERR_MBX ;
 int E1000_MBVFICR ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_check_for_bit_pf(struct e1000_hw *hw, u32 mask)
{
 u32 mbvficr = E1000_READ_REG(hw, E1000_MBVFICR);
 s32 ret_val = -E1000_ERR_MBX;

 if (mbvficr & mask) {
  ret_val = E1000_SUCCESS;
  E1000_WRITE_REG(hw, E1000_MBVFICR, mask);
 }

 return ret_val;
}
