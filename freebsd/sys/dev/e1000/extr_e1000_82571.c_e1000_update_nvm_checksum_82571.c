
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_FLUPD ;
 scalar_t__ E1000_ERR_NVM ;
 scalar_t__ E1000_FLASH_UPDATES ;
 int E1000_FLOP ;
 int E1000_HICR ;
 int E1000_HICR_FW_RESET ;
 int E1000_HICR_FW_RESET_ENABLE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STM_OPCODE ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_nvm_flash_hw ;
 scalar_t__ e1000_update_nvm_checksum_generic (struct e1000_hw*) ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_update_nvm_checksum_82571(struct e1000_hw *hw)
{
 u32 eecd;
 s32 ret_val;
 u16 i;

 DEBUGFUNC("e1000_update_nvm_checksum_82571");

 ret_val = e1000_update_nvm_checksum_generic(hw);
 if (ret_val)
  return ret_val;




 if (hw->nvm.type != e1000_nvm_flash_hw)
  return E1000_SUCCESS;


 for (i = 0; i < E1000_FLASH_UPDATES; i++) {
  msec_delay(1);
  if (!(E1000_READ_REG(hw, E1000_EECD) & E1000_EECD_FLUPD))
   break;
 }

 if (i == E1000_FLASH_UPDATES)
  return -E1000_ERR_NVM;


 if ((E1000_READ_REG(hw, E1000_FLOP) & 0xFF00) == E1000_STM_OPCODE) {



  E1000_WRITE_REG(hw, E1000_HICR, E1000_HICR_FW_RESET_ENABLE);
  E1000_WRITE_FLUSH(hw);
  E1000_WRITE_REG(hw, E1000_HICR, E1000_HICR_FW_RESET);
 }


 eecd = E1000_READ_REG(hw, E1000_EECD) | E1000_EECD_FLUPD;
 E1000_WRITE_REG(hw, E1000_EECD, eecd);

 for (i = 0; i < E1000_FLASH_UPDATES; i++) {
  msec_delay(1);
  if (!(E1000_READ_REG(hw, E1000_EECD) & E1000_EECD_FLUPD))
   break;
 }

 if (i == E1000_FLASH_UPDATES)
  return -E1000_ERR_NVM;

 return E1000_SUCCESS;
}
