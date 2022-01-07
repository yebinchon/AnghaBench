
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int ixgbe_calc_checksum_X550 (struct ixgbe_hw*,int *,int ) ;

s32 ixgbe_calc_eeprom_checksum_X550(struct ixgbe_hw *hw)
{
 return ixgbe_calc_checksum_X550(hw, ((void*)0), 0);
}
