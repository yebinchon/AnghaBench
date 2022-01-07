
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_phy_info {int type; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SUCCESS ;
 int e1000_phy_none ;

__attribute__((used)) static s32 e1000_init_phy_params_82542(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_init_phy_params_82542");

 phy->type = e1000_phy_none;

 return ret_val;
}
