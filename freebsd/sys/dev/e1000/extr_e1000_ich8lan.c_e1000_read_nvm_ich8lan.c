
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ word_size; scalar_t__ flash_bank_size; TYPE_3__ ops; } ;
struct e1000_dev_spec_ich8lan {TYPE_2__* shadow_ram; } ;
struct TYPE_4__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_1__ dev_spec; struct e1000_nvm_info nvm; } ;
typedef int s32 ;
struct TYPE_5__ {scalar_t__ value; scalar_t__ modified; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int E1000_ERR_NVM ;
 int E1000_SUCCESS ;
 int e1000_read_flash_word_ich8lan (struct e1000_hw*,scalar_t__,scalar_t__*) ;
 int e1000_valid_nvm_bank_detect_ich8lan (struct e1000_hw*,scalar_t__*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_read_nvm_ich8lan(struct e1000_hw *hw, u16 offset, u16 words,
      u16 *data)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 u32 act_offset;
 s32 ret_val = E1000_SUCCESS;
 u32 bank = 0;
 u16 i, word;

 DEBUGFUNC("e1000_read_nvm_ich8lan");

 if ((offset >= nvm->word_size) || (words > nvm->word_size - offset) ||
     (words == 0)) {
  DEBUGOUT("nvm parameter(s) out of bounds\n");
  ret_val = -E1000_ERR_NVM;
  goto out;
 }

 nvm->ops.acquire(hw);

 ret_val = e1000_valid_nvm_bank_detect_ich8lan(hw, &bank);
 if (ret_val != E1000_SUCCESS) {
  DEBUGOUT("Could not detect valid bank, assuming bank 0\n");
  bank = 0;
 }

 act_offset = (bank) ? nvm->flash_bank_size : 0;
 act_offset += offset;

 ret_val = E1000_SUCCESS;
 for (i = 0; i < words; i++) {
  if (dev_spec->shadow_ram[offset+i].modified) {
   data[i] = dev_spec->shadow_ram[offset+i].value;
  } else {
   ret_val = e1000_read_flash_word_ich8lan(hw,
        act_offset + i,
        &word);
   if (ret_val)
    break;
   data[i] = word;
  }
 }

 nvm->ops.release(hw);

out:
 if (ret_val)
  DEBUGOUT1("NVM read error: %d\n", ret_val);

 return ret_val;
}
