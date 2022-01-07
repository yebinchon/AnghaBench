
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int ERROR_REPORT2 (int ,char*,scalar_t__) ;
 int IXGBE_ERROR_CAUTION ;
 int IXGBE_PE ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_read_i2c_byte_unlocked (struct ixgbe_hw*,int ,int ,int *) ;

__attribute__((used)) static s32 ixgbe_read_pe(struct ixgbe_hw *hw, u8 reg, u8 *value)
{
 s32 status;

 status = ixgbe_read_i2c_byte_unlocked(hw, reg, IXGBE_PE, value);
 if (status != IXGBE_SUCCESS)
  ERROR_REPORT2(IXGBE_ERROR_CAUTION,
         "port expander access failed with %d\n", status);
 return status;
}
