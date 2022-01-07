
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ e1000_check_alt_mac_addr_generic (struct e1000_hw*) ;
 scalar_t__ e1000_read_mac_addr_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_read_mac_addr_82575(struct e1000_hw *hw)
{
 s32 ret_val;

 DEBUGFUNC("e1000_read_mac_addr_82575");






 ret_val = e1000_check_alt_mac_addr_generic(hw);
 if (ret_val)
  goto out;

 ret_val = e1000_read_mac_addr_generic(hw);

out:
 return ret_val;
}
