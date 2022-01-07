
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* update ) (struct e1000_hw*) ;scalar_t__ (* write ) (struct e1000_hw*,int,int,int*) ;scalar_t__ (* read ) (struct e1000_hw*,int,int,int*) ;} ;
struct e1000_nvm_info {scalar_t__ type; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ e1000_nvm_flash_hw ;
 scalar_t__ stub1 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub3 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub4 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_fix_nvm_checksum_82571(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 s32 ret_val;
 u16 data;

 DEBUGFUNC("e1000_fix_nvm_checksum_82571");

 if (nvm->type != e1000_nvm_flash_hw)
  return E1000_SUCCESS;




 ret_val = nvm->ops.read(hw, 0x10, 1, &data);
 if (ret_val)
  return ret_val;

 if (!(data & 0x10)) {







  ret_val = nvm->ops.read(hw, 0x23, 1, &data);
  if (ret_val)
   return ret_val;

  if (!(data & 0x8000)) {
   data |= 0x8000;
   ret_val = nvm->ops.write(hw, 0x23, 1, &data);
   if (ret_val)
    return ret_val;
   ret_val = nvm->ops.update(hw);
   if (ret_val)
    return ret_val;
  }
 }

 return E1000_SUCCESS;
}
