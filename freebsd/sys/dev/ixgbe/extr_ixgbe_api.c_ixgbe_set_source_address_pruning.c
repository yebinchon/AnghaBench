
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_source_address_pruning ) (struct ixgbe_hw*,int,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;


 int stub1 (struct ixgbe_hw*,int,unsigned int) ;

void ixgbe_set_source_address_pruning(struct ixgbe_hw *hw, bool enable,
          unsigned int pool)
{
 if (hw->mac.ops.set_source_address_pruning)
  hw->mac.ops.set_source_address_pruning(hw, enable, pool);
}
