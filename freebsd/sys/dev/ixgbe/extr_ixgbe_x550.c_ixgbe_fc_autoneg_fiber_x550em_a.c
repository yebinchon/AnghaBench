
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int requested_mode; int current_mode; int fc_was_autonegged; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;


 int FALSE ;

void ixgbe_fc_autoneg_fiber_x550em_a(struct ixgbe_hw *hw)
{
 hw->fc.fc_was_autonegged = FALSE;
 hw->fc.current_mode = hw->fc.requested_mode;
}
