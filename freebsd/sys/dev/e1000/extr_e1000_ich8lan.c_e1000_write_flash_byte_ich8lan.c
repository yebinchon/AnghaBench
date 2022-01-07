
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int e1000_write_flash_data_ich8lan (struct e1000_hw*,int ,int,int ) ;

__attribute__((used)) static s32 e1000_write_flash_byte_ich8lan(struct e1000_hw *hw, u32 offset,
       u8 data)
{
 u16 word = (u16)data;

 DEBUGFUNC("e1000_write_flash_byte_ich8lan");

 return e1000_write_flash_data_ich8lan(hw, offset, 1, word);
}
