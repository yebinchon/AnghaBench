
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_SWFW_EEP_SM ;
 int e1000_release_swfw_sync (struct e1000_hw*,int ) ;

__attribute__((used)) static void e1000_release_nvm_i210(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_release_nvm_i210");

 e1000_release_swfw_sync(hw, E1000_SWFW_EEP_SM);
}
