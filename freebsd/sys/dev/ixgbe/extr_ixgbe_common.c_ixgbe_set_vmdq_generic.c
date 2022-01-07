
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_rar_entries; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT2 (int ,char*,scalar_t__) ;
 int IXGBE_ERROR_ARGUMENT ;
 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_MPSAR_HI (scalar_t__) ;
 int IXGBE_MPSAR_LO (scalar_t__) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;

s32 ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
{
 u32 mpsar;
 u32 rar_entries = hw->mac.num_rar_entries;

 DEBUGFUNC("ixgbe_set_vmdq_generic");


 if (rar >= rar_entries) {
  ERROR_REPORT2(IXGBE_ERROR_ARGUMENT,
        "RAR index %d is out of range.\n", rar);
  return IXGBE_ERR_INVALID_ARGUMENT;
 }

 if (vmdq < 32) {
  mpsar = IXGBE_READ_REG(hw, IXGBE_MPSAR_LO(rar));
  mpsar |= 1 << vmdq;
  IXGBE_WRITE_REG(hw, IXGBE_MPSAR_LO(rar), mpsar);
 } else {
  mpsar = IXGBE_READ_REG(hw, IXGBE_MPSAR_HI(rar));
  mpsar |= 1 << (vmdq - 32);
  IXGBE_WRITE_REG(hw, IXGBE_MPSAR_HI(rar), mpsar);
 }
 return IXGBE_SUCCESS;
}
