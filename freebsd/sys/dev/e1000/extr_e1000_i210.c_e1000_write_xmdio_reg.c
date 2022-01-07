
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int FALSE ;
 int __e1000_access_xmdio_reg (struct e1000_hw*,int ,int ,int *,int ) ;

s32 e1000_write_xmdio_reg(struct e1000_hw *hw, u16 addr, u8 dev_addr, u16 data)
{
 DEBUGFUNC("e1000_read_xmdio_reg");

 return __e1000_access_xmdio_reg(hw, addr, dev_addr, &data, FALSE);
}
