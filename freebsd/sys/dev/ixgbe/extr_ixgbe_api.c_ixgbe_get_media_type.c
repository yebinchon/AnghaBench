
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int get_media_type; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef enum ixgbe_media_type { ____Placeholder_ixgbe_media_type } ixgbe_media_type ;


 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;
 int ixgbe_media_type_unknown ;

enum ixgbe_media_type ixgbe_get_media_type(struct ixgbe_hw *hw)
{
 return ixgbe_call_func(hw, hw->mac.ops.get_media_type, (hw),
          ixgbe_media_type_unknown);
}
