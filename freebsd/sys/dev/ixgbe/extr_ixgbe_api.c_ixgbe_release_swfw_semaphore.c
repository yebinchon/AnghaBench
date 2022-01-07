
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;


 int stub1 (struct ixgbe_hw*,int ) ;

void ixgbe_release_swfw_semaphore(struct ixgbe_hw *hw, u32 mask)
{
 if (hw->mac.ops.release_swfw_sync)
  hw->mac.ops.release_swfw_sync(hw, mask);
}
