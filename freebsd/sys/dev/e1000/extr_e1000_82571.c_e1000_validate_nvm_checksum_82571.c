
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ nvm; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int e1000_fix_nvm_checksum_82571 (struct e1000_hw*) ;
 scalar_t__ e1000_nvm_flash_hw ;
 int e1000_validate_nvm_checksum_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_validate_nvm_checksum_82571(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_validate_nvm_checksum_82571");

 if (hw->nvm.type == e1000_nvm_flash_hw)
  e1000_fix_nvm_checksum_82571(hw);

 return e1000_validate_nvm_checksum_generic(hw);
}
