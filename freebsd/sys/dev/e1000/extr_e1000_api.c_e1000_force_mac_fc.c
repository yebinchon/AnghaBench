
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1000_force_mac_fc_generic (struct e1000_hw*) ;

s32 e1000_force_mac_fc(struct e1000_hw *hw)
{
 return e1000_force_mac_fc_generic(hw);
}
