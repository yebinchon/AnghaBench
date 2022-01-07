
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* update ) (struct e1000_hw*) ;scalar_t__ (* write ) (struct e1000_hw*,int,int,int*) ;scalar_t__ (* read ) (struct e1000_hw*,int,int,int*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct TYPE_6__ {int type; } ;
struct e1000_hw {TYPE_2__ nvm; TYPE_3__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int NVM_COMPAT ;
 int NVM_COMPAT_VALID_CSUM ;
 int NVM_FUTURE_INIT_WORD1 ;
 int NVM_FUTURE_INIT_WORD1_VALID_CSUM ;



 scalar_t__ e1000_validate_nvm_checksum_generic (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub3 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 data;
 u16 word;
 u16 valid_csum_mask;

 DEBUGFUNC("e1000_validate_nvm_checksum_ich8lan");






 switch (hw->mac.type) {
 case 129:
 case 128:
 case 130:
  word = NVM_COMPAT;
  valid_csum_mask = NVM_COMPAT_VALID_CSUM;
  break;
 default:
  word = NVM_FUTURE_INIT_WORD1;
  valid_csum_mask = NVM_FUTURE_INIT_WORD1_VALID_CSUM;
  break;
 }

 ret_val = hw->nvm.ops.read(hw, word, 1, &data);
 if (ret_val)
  return ret_val;

 if (!(data & valid_csum_mask)) {
  data |= valid_csum_mask;
  ret_val = hw->nvm.ops.write(hw, word, 1, &data);
  if (ret_val)
   return ret_val;
  ret_val = hw->nvm.ops.update(hw);
  if (ret_val)
   return ret_val;
 }

 return e1000_validate_nvm_checksum_generic(hw);
}
