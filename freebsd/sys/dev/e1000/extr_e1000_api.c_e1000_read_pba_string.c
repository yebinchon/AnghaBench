
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1000_read_pba_string_generic (struct e1000_hw*,int *,int ) ;

s32 e1000_read_pba_string(struct e1000_hw *hw, u8 *pba_num, u32 pba_num_size)
{
 return e1000_read_pba_string_generic(hw, pba_num, pba_num_size);
}
