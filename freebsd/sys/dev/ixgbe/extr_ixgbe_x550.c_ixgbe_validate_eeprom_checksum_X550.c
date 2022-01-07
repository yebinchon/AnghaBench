
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int ,scalar_t__*) ;int (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_EEPROM_CHECKSUM ;
 int IXGBE_ERROR_INVALID_STATE ;
 int IXGBE_ERR_EEPROM_CHECKSUM ;
 int ixgbe_read_ee_hostif_X550 (struct ixgbe_hw*,int ,scalar_t__*) ;
 int stub1 (struct ixgbe_hw*,int ,scalar_t__*) ;
 int stub2 (struct ixgbe_hw*) ;

s32 ixgbe_validate_eeprom_checksum_X550(struct ixgbe_hw *hw, u16 *checksum_val)
{
 s32 status;
 u16 checksum;
 u16 read_checksum = 0;

 DEBUGFUNC("ixgbe_validate_eeprom_checksum_X550");





 status = hw->eeprom.ops.read(hw, 0, &checksum);
 if (status) {
  DEBUGOUT("EEPROM read failed\n");
  return status;
 }

 status = hw->eeprom.ops.calc_checksum(hw);
 if (status < 0)
  return status;

 checksum = (u16)(status & 0xffff);

 status = ixgbe_read_ee_hostif_X550(hw, IXGBE_EEPROM_CHECKSUM,
        &read_checksum);
 if (status)
  return status;




 if (read_checksum != checksum) {
  status = IXGBE_ERR_EEPROM_CHECKSUM;
  ERROR_REPORT1(IXGBE_ERROR_INVALID_STATE,
        "Invalid EEPROM checksum");
 }


 if (checksum_val)
  *checksum_val = checksum;

 return status;
}
