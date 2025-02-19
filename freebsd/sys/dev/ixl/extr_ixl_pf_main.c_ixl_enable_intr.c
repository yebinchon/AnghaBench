
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixl_vsi {int num_rx_queues; TYPE_1__* shared; struct ixl_rx_queue* rx_queues; struct i40e_hw* hw; } ;
struct TYPE_4__ {int me; } ;
struct ixl_rx_queue {TYPE_2__ rxr; } ;
struct i40e_hw {int dummy; } ;
struct TYPE_3__ {scalar_t__ isc_intr; } ;


 scalar_t__ IFLIB_INTR_MSIX ;
 int ixl_enable_intr0 (struct i40e_hw*) ;
 int ixl_enable_queue (struct i40e_hw*,int ) ;

void
ixl_enable_intr(struct ixl_vsi *vsi)
{
 struct i40e_hw *hw = vsi->hw;
 struct ixl_rx_queue *que = vsi->rx_queues;

 if (vsi->shared->isc_intr == IFLIB_INTR_MSIX) {
  for (int i = 0; i < vsi->num_rx_queues; i++, que++)
   ixl_enable_queue(hw, que->rxr.me);
 } else
  ixl_enable_intr0(hw);
}
