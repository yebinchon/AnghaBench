
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* flap_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;


 int stub1 (struct ixgbe_hw*) ;

void ixgbe_flap_tx_laser(struct ixgbe_hw *hw)
{
 if (hw->mac.ops.flap_tx_laser)
  hw->mac.ops.flap_tx_laser(hw);
}
