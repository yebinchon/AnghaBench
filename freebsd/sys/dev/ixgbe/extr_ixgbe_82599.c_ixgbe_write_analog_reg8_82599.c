
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_CORECTL ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int usec_delay (int) ;

s32 ixgbe_write_analog_reg8_82599(struct ixgbe_hw *hw, u32 reg, u8 val)
{
 u32 core_ctl;

 DEBUGFUNC("ixgbe_write_analog_reg8_82599");

 core_ctl = (reg << 8) | val;
 IXGBE_WRITE_REG(hw, IXGBE_CORECTL, core_ctl);
 IXGBE_WRITE_FLUSH(hw);
 usec_delay(10);

 return IXGBE_SUCCESS;
}
