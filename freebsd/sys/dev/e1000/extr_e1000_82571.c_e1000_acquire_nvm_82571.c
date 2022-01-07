
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;

 scalar_t__ e1000_acquire_nvm_generic (struct e1000_hw*) ;
 scalar_t__ e1000_get_hw_semaphore (struct e1000_hw*) ;
 int e1000_put_hw_semaphore (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_acquire_nvm_82571(struct e1000_hw *hw)
{
 s32 ret_val;

 DEBUGFUNC("e1000_acquire_nvm_82571");

 ret_val = e1000_get_hw_semaphore(hw);
 if (ret_val)
  return ret_val;

 switch (hw->mac.type) {
 case 128:
  break;
 default:
  ret_val = e1000_acquire_nvm_generic(hw);
  break;
 }

 if (ret_val)
  e1000_put_hw_semaphore(hw);

 return ret_val;
}
