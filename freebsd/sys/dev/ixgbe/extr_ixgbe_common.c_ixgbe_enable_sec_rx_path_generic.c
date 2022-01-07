
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SECRXCTRL ;
 int IXGBE_SECRXCTRL_RX_DIS ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

s32 ixgbe_enable_sec_rx_path_generic(struct ixgbe_hw *hw)
{
 u32 secrxreg;

 DEBUGFUNC("ixgbe_enable_sec_rx_path_generic");

 secrxreg = IXGBE_READ_REG(hw, IXGBE_SECRXCTRL);
 secrxreg &= ~IXGBE_SECRXCTRL_RX_DIS;
 IXGBE_WRITE_REG(hw, IXGBE_SECRXCTRL, secrxreg);
 IXGBE_WRITE_FLUSH(hw);

 return IXGBE_SUCCESS;
}
