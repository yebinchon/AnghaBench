
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int (* reload ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ type; scalar_t__ flash_bank_size; TYPE_3__ ops; } ;
struct e1000_dev_spec_ich8lan {TYPE_2__* shadow_ram; } ;
struct TYPE_4__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_1__ dev_spec; struct e1000_nvm_info nvm; } ;
typedef scalar_t__ s32 ;
struct TYPE_5__ {int value; scalar_t__ modified; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 int E1000_ICH_NVM_SIG_MASK ;
 int E1000_ICH_NVM_SIG_WORD ;
 scalar_t__ E1000_SHADOW_RAM_WORDS ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ e1000_erase_flash_bank_ich8lan (struct e1000_hw*,int) ;
 scalar_t__ e1000_nvm_flash_sw ;
 scalar_t__ e1000_read_flash_dword_ich8lan (struct e1000_hw*,scalar_t__,scalar_t__*) ;
 scalar_t__ e1000_retry_write_flash_dword_ich8lan (struct e1000_hw*,scalar_t__,scalar_t__) ;
 scalar_t__ e1000_update_nvm_checksum_generic (struct e1000_hw*) ;
 scalar_t__ e1000_valid_nvm_bank_detect_ich8lan (struct e1000_hw*,scalar_t__*) ;
 int msec_delay (int) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_update_nvm_checksum_spt(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 u32 i, act_offset, new_bank_offset, old_bank_offset, bank;
 s32 ret_val;
 u32 dword = 0;

 DEBUGFUNC("e1000_update_nvm_checksum_spt");

 ret_val = e1000_update_nvm_checksum_generic(hw);
 if (ret_val)
  goto out;

 if (nvm->type != e1000_nvm_flash_sw)
  goto out;

 nvm->ops.acquire(hw);





 ret_val = e1000_valid_nvm_bank_detect_ich8lan(hw, &bank);
 if (ret_val != E1000_SUCCESS) {
  DEBUGOUT("Could not detect valid bank, assuming bank 0\n");
  bank = 0;
 }

 if (bank == 0) {
  new_bank_offset = nvm->flash_bank_size;
  old_bank_offset = 0;
  ret_val = e1000_erase_flash_bank_ich8lan(hw, 1);
  if (ret_val)
   goto release;
 } else {
  old_bank_offset = nvm->flash_bank_size;
  new_bank_offset = 0;
  ret_val = e1000_erase_flash_bank_ich8lan(hw, 0);
  if (ret_val)
   goto release;
 }
 for (i = 0; i < E1000_SHADOW_RAM_WORDS; i += 2) {




  ret_val = e1000_read_flash_dword_ich8lan(hw,
        i + old_bank_offset,
        &dword);

  if (dev_spec->shadow_ram[i].modified) {
   dword &= 0xffff0000;
   dword |= (dev_spec->shadow_ram[i].value & 0xffff);
  }
  if (dev_spec->shadow_ram[i + 1].modified) {
   dword &= 0x0000ffff;
   dword |= ((dev_spec->shadow_ram[i + 1].value & 0xffff)
      << 16);
  }
  if (ret_val)
   break;
  if (i == E1000_ICH_NVM_SIG_WORD - 1)
   dword |= E1000_ICH_NVM_SIG_MASK << 16;


  act_offset = (i + new_bank_offset) << 1;

  usec_delay(100);


  act_offset = i + new_bank_offset;
  ret_val = e1000_retry_write_flash_dword_ich8lan(hw, act_offset,
        dword);
  if (ret_val)
   break;
  }




 if (ret_val) {
  DEBUGOUT("Flash commit failed.\n");
  goto release;
 }






 act_offset = new_bank_offset + E1000_ICH_NVM_SIG_WORD;


 --act_offset;
 ret_val = e1000_read_flash_dword_ich8lan(hw, act_offset, &dword);

 if (ret_val)
  goto release;

 dword &= 0xBFFFFFFF;
 ret_val = e1000_retry_write_flash_dword_ich8lan(hw, act_offset, dword);

 if (ret_val)
  goto release;






 act_offset = (old_bank_offset + E1000_ICH_NVM_SIG_WORD) * 2 + 1;


 act_offset = old_bank_offset + E1000_ICH_NVM_SIG_WORD - 1;
 ret_val = e1000_read_flash_dword_ich8lan(hw, act_offset, &dword);

 if (ret_val)
  goto release;

 dword &= 0x00FFFFFF;
 ret_val = e1000_retry_write_flash_dword_ich8lan(hw, act_offset, dword);

 if (ret_val)
  goto release;


 for (i = 0; i < E1000_SHADOW_RAM_WORDS; i++) {
  dev_spec->shadow_ram[i].modified = FALSE;
  dev_spec->shadow_ram[i].value = 0xFFFF;
 }

release:
 nvm->ops.release(hw);




 if (!ret_val) {
  nvm->ops.reload(hw);
  msec_delay(10);
 }

out:
 if (ret_val)
  DEBUGOUT1("NVM update error: %d\n", ret_val);

 return ret_val;
}
