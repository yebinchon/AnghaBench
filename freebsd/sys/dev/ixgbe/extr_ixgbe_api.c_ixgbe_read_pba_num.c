
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int ixgbe_read_pba_num_generic (struct ixgbe_hw*,int *) ;

s32 ixgbe_read_pba_num(struct ixgbe_hw *hw, u32 *pba_num)
{
 return ixgbe_read_pba_num_generic(hw, pba_num);
}
