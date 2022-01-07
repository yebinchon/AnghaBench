
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int ,scalar_t__*) ;int (* calc_checksum ) (struct ixgbe_hw*) ;int (* write ) (struct ixgbe_hw*,int ,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_EEPROM_CHECKSUM ;
 int stub1 (struct ixgbe_hw*,int ,scalar_t__*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*,int ,scalar_t__) ;

s32 ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw)
{
 s32 status;
 u16 checksum;

 DEBUGFUNC("ixgbe_update_eeprom_checksum_generic");





 status = hw->eeprom.ops.read(hw, 0, &checksum);
 if (status) {
  DEBUGOUT("EEPROM read failed\n");
  return status;
 }

 status = hw->eeprom.ops.calc_checksum(hw);
 if (status < 0)
  return status;

 checksum = (u16)(status & 0xffff);

 status = hw->eeprom.ops.write(hw, IXGBE_EEPROM_CHECKSUM, checksum);

 return status;
}
