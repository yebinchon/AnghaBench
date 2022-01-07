
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixl_vsi {int num_rx_queues; struct ixl_rx_queue* rx_queues; struct i40e_hw* hw; } ;
struct TYPE_2__ {int me; } ;
struct ixl_rx_queue {TYPE_1__ rxr; } ;
struct i40e_hw {int dummy; } ;


 int ixl_disable_queue (struct i40e_hw*,int ) ;

void
ixl_disable_rings_intr(struct ixl_vsi *vsi)
{
 struct i40e_hw *hw = vsi->hw;
 struct ixl_rx_queue *que = vsi->rx_queues;

 for (int i = 0; i < vsi->num_rx_queues; i++, que++)
  ixl_disable_queue(hw, que->rxr.me);
}
