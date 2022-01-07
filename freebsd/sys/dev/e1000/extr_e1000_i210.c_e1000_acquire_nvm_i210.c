
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SWFW_EEP_SM ;
 int e1000_acquire_swfw_sync (struct e1000_hw*,int ) ;

__attribute__((used)) static s32 e1000_acquire_nvm_i210(struct e1000_hw *hw)
{
 s32 ret_val;

 DEBUGFUNC("e1000_acquire_nvm_i210");

 ret_val = e1000_acquire_swfw_sync(hw, E1000_SWFW_EEP_SM);

 return ret_val;
}
