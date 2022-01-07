
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int get_supported_physical_layer; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;


 int IXGBE_PHYSICAL_LAYER_UNKNOWN ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

u64 ixgbe_get_supported_physical_layer(struct ixgbe_hw *hw)
{
 return ixgbe_call_func(hw, hw->mac.ops.get_supported_physical_layer,
          (hw), IXGBE_PHYSICAL_LAYER_UNKNOWN);
}
