
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i40e_hw {int dummy; } ;


 int rd32 (struct i40e_hw*,int ) ;
 int rd64 (struct i40e_hw*,int ) ;

void
ixl_stat_update48(struct i40e_hw *hw, u32 hireg, u32 loreg,
 bool offset_loaded, u64 *offset, u64 *stat)
{
 u64 new_data;
 new_data = rd32(hw, loreg);
 new_data |= ((u64)(rd32(hw, hireg) & 0xFFFF)) << 32;


 if (!offset_loaded)
  *offset = new_data;
 if (new_data >= *offset)
  *stat = new_data - *offset;
 else
  *stat = (new_data + ((u64)1 << 48)) - *offset;
 *stat &= 0xFFFFFFFFFFFFULL;
}
