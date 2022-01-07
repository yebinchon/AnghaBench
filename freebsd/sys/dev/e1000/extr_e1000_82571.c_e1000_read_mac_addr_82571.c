
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ e1000_82571 ;
 scalar_t__ e1000_check_alt_mac_addr_generic (struct e1000_hw*) ;
 scalar_t__ e1000_read_mac_addr_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_read_mac_addr_82571(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_read_mac_addr_82571");

 if (hw->mac.type == e1000_82571) {
  s32 ret_val;





  ret_val = e1000_check_alt_mac_addr_generic(hw);
  if (ret_val)
   return ret_val;
 }

 return e1000_read_mac_addr_generic(hw);
}
