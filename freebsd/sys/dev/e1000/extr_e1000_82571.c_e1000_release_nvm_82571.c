
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int e1000_put_hw_semaphore (struct e1000_hw*) ;
 int e1000_release_nvm_generic (struct e1000_hw*) ;

__attribute__((used)) static void e1000_release_nvm_82571(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_release_nvm_82571");

 e1000_release_nvm_generic(hw);
 e1000_put_hw_semaphore(hw);
}
