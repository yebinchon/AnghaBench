
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef int s8 ;


 int IXGBE_IVAR (int) ;
 int IXGBE_IVAR_ALLOC_VAL ;
 int IXGBE_IVAR_MISC ;
 int IXGBE_IVAR_OTHER_CAUSES_INDEX ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;







__attribute__((used)) static void
ixgbe_set_ivar(struct adapter *adapter, u8 entry, u8 vector, s8 type)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 ivar, index;

 vector |= IXGBE_IVAR_ALLOC_VAL;

 switch (hw->mac.type) {
 case 133:
  if (type == -1)
   entry = IXGBE_IVAR_OTHER_CAUSES_INDEX;
  else
   entry += (type * 64);
  index = (entry >> 2) & 0x1F;
  ivar = IXGBE_READ_REG(hw, IXGBE_IVAR(index));
  ivar &= ~(0xFF << (8 * (entry & 0x3)));
  ivar |= (vector << (8 * (entry & 0x3)));
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_IVAR(index), ivar);
  break;
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
  if (type == -1) {
   index = (entry & 1) * 8;
   ivar = IXGBE_READ_REG(hw, IXGBE_IVAR_MISC);
   ivar &= ~(0xFF << index);
   ivar |= (vector << index);
   IXGBE_WRITE_REG(hw, IXGBE_IVAR_MISC, ivar);
  } else {
   index = (16 * (entry & 1)) + (8 * type);
   ivar = IXGBE_READ_REG(hw, IXGBE_IVAR(entry >> 1));
   ivar &= ~(0xFF << index);
   ivar |= (vector << index);
   IXGBE_WRITE_REG(hw, IXGBE_IVAR(entry >> 1), ivar);
  }
 default:
  break;
 }
}
