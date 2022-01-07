
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int requested_mode; int disable_fc_autoneg; } ;
struct TYPE_4__ {TYPE_1__ fc; } ;
struct adapter {int num_rx_queues; TYPE_2__ hw; } ;


 int EINVAL ;
 int TRUE ;
 int ixgbe_disable_rx_drop (struct adapter*) ;
 int ixgbe_enable_rx_drop (struct adapter*) ;
 int ixgbe_fc_enable (TYPE_2__*) ;





__attribute__((used)) static int
ixgbe_set_flowcntl(struct adapter *adapter, int fc)
{
 switch (fc) {
 case 129:
 case 128:
 case 131:
  adapter->hw.fc.requested_mode = fc;
  if (adapter->num_rx_queues > 1)
   ixgbe_disable_rx_drop(adapter);
  break;
 case 130:
  adapter->hw.fc.requested_mode = 130;
  if (adapter->num_rx_queues > 1)
   ixgbe_enable_rx_drop(adapter);
  break;
 default:
  return (EINVAL);
 }


 adapter->hw.fc.disable_fc_autoneg = TRUE;
 ixgbe_fc_enable(&adapter->hw);

 return (0);
}
