
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixl_vsi {int num_rx_queues; struct ixl_rx_queue* rx_queues; struct i40e_hw* hw; } ;
struct TYPE_2__ {int me; } ;
struct ixl_rx_queue {TYPE_1__ rxr; } ;
struct ixl_pf {struct ixl_vsi vsi; } ;
struct i40e_hw {int dummy; } ;
typedef int if_ctx_t ;


 struct ixl_pf* iflib_get_softc (int ) ;
 int ixl_enable_intr0 (struct i40e_hw*) ;
 int ixl_enable_queue (struct i40e_hw*,int ) ;

__attribute__((used)) static void
ixl_if_enable_intr(if_ctx_t ctx)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;
 struct i40e_hw *hw = vsi->hw;
 struct ixl_rx_queue *que = vsi->rx_queues;

 ixl_enable_intr0(hw);

 for (int i = 0; i < vsi->num_rx_queues; i++, que++)

  ixl_enable_queue(hw, que->rxr.me);
}
