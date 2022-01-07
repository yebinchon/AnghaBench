
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef int s8 ;


 int IXGBE_IVAR_ALLOC_VAL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VTIVAR (int) ;
 int IXGBE_VTIVAR_MISC ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void
ixv_set_ivar(struct adapter *adapter, u8 entry, u8 vector, s8 type)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 ivar, index;

 vector |= IXGBE_IVAR_ALLOC_VAL;

 if (type == -1) {
  ivar = IXGBE_READ_REG(hw, IXGBE_VTIVAR_MISC);
  ivar &= ~0xFF;
  ivar |= vector;
  IXGBE_WRITE_REG(hw, IXGBE_VTIVAR_MISC, ivar);
 } else {
  index = (16 * (entry & 1)) + (8 * type);
  ivar = IXGBE_READ_REG(hw, IXGBE_VTIVAR(entry >> 1));
  ivar &= ~(0xFF << index);
  ivar |= (vector << index);
  IXGBE_WRITE_REG(hw, IXGBE_VTIVAR(entry >> 1), ivar);
 }
}
