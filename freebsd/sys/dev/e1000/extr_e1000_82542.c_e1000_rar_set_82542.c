
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_RA ;
 int E1000_RAH_AV ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int) ;

__attribute__((used)) static int e1000_rar_set_82542(struct e1000_hw *hw, u8 *addr, u32 index)
{
 u32 rar_low, rar_high;

 DEBUGFUNC("e1000_rar_set_82542");





 rar_low = ((u32) addr[0] | ((u32) addr[1] << 8) |
     ((u32) addr[2] << 16) | ((u32) addr[3] << 24));

 rar_high = ((u32) addr[4] | ((u32) addr[5] << 8));


 if (rar_low || rar_high)
  rar_high |= E1000_RAH_AV;

 E1000_WRITE_REG_ARRAY(hw, E1000_RA, (index << 1), rar_low);
 E1000_WRITE_REG_ARRAY(hw, E1000_RA, ((index << 1) + 1), rar_high);

 return E1000_SUCCESS;
}
