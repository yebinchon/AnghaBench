
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct ixl_vsi {struct ixl_rx_queue* rx_queues; struct i40e_hw* hw; } ;
struct ixl_rx_queue {scalar_t__ msix; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;
struct i40e_hw {int dummy; } ;
typedef int if_ctx_t ;


 int iavf_enable_queue_irq (struct i40e_hw*,scalar_t__) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static int
iavf_if_rx_queue_intr_enable(if_ctx_t ctx, uint16_t rxqid)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &sc->vsi;
 struct i40e_hw *hw = vsi->hw;
 struct ixl_rx_queue *rx_que = &vsi->rx_queues[rxqid];

 iavf_enable_queue_irq(hw, rx_que->msix - 1);
 return (0);
}
