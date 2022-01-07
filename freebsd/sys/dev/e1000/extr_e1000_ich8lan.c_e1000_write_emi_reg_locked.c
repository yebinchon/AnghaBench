
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int FALSE ;
 int __e1000_access_emi_reg_locked (struct e1000_hw*,int ,int *,int ) ;

s32 e1000_write_emi_reg_locked(struct e1000_hw *hw, u16 addr, u16 data)
{
 DEBUGFUNC("e1000_read_emi_reg_locked");

 return __e1000_access_emi_reg_locked(hw, addr, &data, FALSE);
}
