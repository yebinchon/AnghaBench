
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1000_mng_host_if_write_generic (struct e1000_hw*,int *,int ,int ,int *) ;

s32 e1000_mng_host_if_write(struct e1000_hw *hw, u8 *buffer, u16 length,
       u16 offset, u8 *sum)
{
 return e1000_mng_host_if_write_generic(hw, buffer, length, offset, sum);
}
