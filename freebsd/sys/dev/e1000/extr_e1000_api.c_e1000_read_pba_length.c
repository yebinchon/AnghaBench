
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1000_read_pba_length_generic (struct e1000_hw*,int *) ;

s32 e1000_read_pba_length(struct e1000_hw *hw, u32 *pba_num_size)
{
 return e1000_read_pba_length_generic(hw, pba_num_size);
}
