
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int (* update_mc_addr_list ) (struct e1000_hw*,int *,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;


 int stub1 (struct e1000_hw*,int *,int ) ;

void e1000_update_mc_addr_list(struct e1000_hw *hw, u8 *mc_addr_list,
          u32 mc_addr_count)
{
 if (hw->mac.ops.update_mc_addr_list)
  hw->mac.ops.update_mc_addr_list(hw, mc_addr_list,
      mc_addr_count);
}
