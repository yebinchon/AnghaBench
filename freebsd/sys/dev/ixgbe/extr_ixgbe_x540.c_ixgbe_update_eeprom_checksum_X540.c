
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_5__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_7__ {int (* read ) (struct ixgbe_hw*,int ,scalar_t__*) ;int (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_4__ eeprom; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_EEPROM_CHECKSUM ;
 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 int ixgbe_update_flash_X540 (struct ixgbe_hw*) ;
 int ixgbe_write_eewr_generic (struct ixgbe_hw*,int ,scalar_t__) ;
 int stub1 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ) ;
 int stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*,int ) ;

s32 ixgbe_update_eeprom_checksum_X540(struct ixgbe_hw *hw)
{
 s32 status;
 u16 checksum;

 DEBUGFUNC("ixgbe_update_eeprom_checksum_X540");





 status = hw->eeprom.ops.read(hw, 0, &checksum);
 if (status) {
  DEBUGOUT("EEPROM read failed\n");
  return status;
 }

 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
  return IXGBE_ERR_SWFW_SYNC;

 status = hw->eeprom.ops.calc_checksum(hw);
 if (status < 0)
  goto out;

 checksum = (u16)(status & 0xffff);




 status = ixgbe_write_eewr_generic(hw, IXGBE_EEPROM_CHECKSUM, checksum);
 if (status)
  goto out;

 status = ixgbe_update_flash_X540(hw);

out:
 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);

 return status;
}
