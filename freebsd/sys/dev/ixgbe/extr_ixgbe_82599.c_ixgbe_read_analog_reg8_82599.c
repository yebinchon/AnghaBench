
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_CORECTL ;
 int IXGBE_CORECTL_WRITE_CMD ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int usec_delay (int) ;

s32 ixgbe_read_analog_reg8_82599(struct ixgbe_hw *hw, u32 reg, u8 *val)
{
 u32 core_ctl;

 DEBUGFUNC("ixgbe_read_analog_reg8_82599");

 IXGBE_WRITE_REG(hw, IXGBE_CORECTL, IXGBE_CORECTL_WRITE_CMD |
   (reg << 8));
 IXGBE_WRITE_FLUSH(hw);
 usec_delay(10);
 core_ctl = IXGBE_READ_REG(hw, IXGBE_CORECTL);
 *val = (u8)core_ctl;

 return IXGBE_SUCCESS;
}
