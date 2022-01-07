
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring {int tail; scalar_t__ tx_base; } ;
struct ixl_vsi {int hw; scalar_t__ enable_head_writeback; TYPE_1__* shared; } ;
struct ixl_tx_queue {struct tx_ring txr; } ;
struct i40e_tx_desc {int dummy; } ;
struct TYPE_2__ {int* isc_ntxd; } ;


 int bzero (void*,int) ;
 int wr32 (int ,int ,int ) ;

void
ixl_init_tx_ring(struct ixl_vsi *vsi, struct ixl_tx_queue *que)
{
 struct tx_ring *txr = &que->txr;


 bzero((void *)txr->tx_base,
       (sizeof(struct i40e_tx_desc)) *
       (vsi->shared->isc_ntxd[0] + (vsi->enable_head_writeback ? 1 : 0)));

 wr32(vsi->hw, txr->tail, 0);
}
