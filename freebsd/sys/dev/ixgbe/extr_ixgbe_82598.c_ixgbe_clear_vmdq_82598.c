
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_rar_entries; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGOUT1 (char*,scalar_t__) ;
 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_RAH (scalar_t__) ;
 scalar_t__ IXGBE_RAH_VIND_MASK ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int UNREFERENCED_1PARAMETER (scalar_t__) ;

__attribute__((used)) static s32 ixgbe_clear_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
{
 u32 rar_high;
 u32 rar_entries = hw->mac.num_rar_entries;

 UNREFERENCED_1PARAMETER(vmdq);


 if (rar >= rar_entries) {
  DEBUGOUT1("RAR index %d is out of range.\n", rar);
  return IXGBE_ERR_INVALID_ARGUMENT;
 }

 rar_high = IXGBE_READ_REG(hw, IXGBE_RAH(rar));
 if (rar_high & IXGBE_RAH_VIND_MASK) {
  rar_high &= ~IXGBE_RAH_VIND_MASK;
  IXGBE_WRITE_REG(hw, IXGBE_RAH(rar), rar_high);
 }

 return IXGBE_SUCCESS;
}
