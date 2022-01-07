
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int ASSERT_CTX_LOCK_HELD (struct e1000_hw*) ;
 int DEBUGFUNC (char*) ;

__attribute__((used)) static void e1000_release_nvm_ich8lan(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_release_nvm_ich8lan");

 ASSERT_CTX_LOCK_HELD(hw);
}
