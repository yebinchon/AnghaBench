
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int (* get_rtrup2tc ) (struct ixgbe_hw*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;


 int stub1 (struct ixgbe_hw*,int *) ;

void ixgbe_dcb_get_rtrup2tc(struct ixgbe_hw *hw, u8 *map)
{
 if (hw->mac.ops.get_rtrup2tc)
  hw->mac.ops.get_rtrup2tc(hw, map);
}
