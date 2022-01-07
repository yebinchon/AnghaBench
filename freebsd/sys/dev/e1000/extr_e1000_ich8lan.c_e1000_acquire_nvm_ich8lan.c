
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int ASSERT_CTX_LOCK_HELD (struct e1000_hw*) ;
 int DEBUGFUNC (char*) ;
 int E1000_SUCCESS ;

__attribute__((used)) static s32 e1000_acquire_nvm_ich8lan(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_acquire_nvm_ich8lan");

 ASSERT_CTX_LOCK_HELD(hw);

 return E1000_SUCCESS;
}
