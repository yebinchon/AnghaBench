
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct e1000_hw*,int ,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_SUCCESS ;
 int NVM_82580_LAN_FUNC_OFFSET (int) ;
 int NVM_COMPATIBILITY_BIT_MASK ;
 int NVM_COMPATIBILITY_REG_3 ;
 scalar_t__ e1000_validate_nvm_checksum_with_offset (struct e1000_hw*,int) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int,int*) ;

__attribute__((used)) static s32 e1000_validate_nvm_checksum_82580(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 eeprom_regions_count = 1;
 u16 j, nvm_data;
 u16 nvm_offset;

 DEBUGFUNC("e1000_validate_nvm_checksum_82580");

 ret_val = hw->nvm.ops.read(hw, NVM_COMPATIBILITY_REG_3, 1, &nvm_data);
 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  goto out;
 }

 if (nvm_data & NVM_COMPATIBILITY_BIT_MASK) {


  eeprom_regions_count = 4;
 }

 for (j = 0; j < eeprom_regions_count; j++) {
  nvm_offset = NVM_82580_LAN_FUNC_OFFSET(j);
  ret_val = e1000_validate_nvm_checksum_with_offset(hw,
          nvm_offset);
  if (ret_val != E1000_SUCCESS)
   goto out;
 }

out:
 return ret_val;
}
