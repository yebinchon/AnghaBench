
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {scalar_t__ bytes; scalar_t__ itr; int me; } ;
struct ixl_vsi {scalar_t__ rx_itr_setting; struct i40e_hw* hw; } ;
struct ixl_rx_queue {struct rx_ring rxr; struct ixl_vsi* vsi; } ;
struct i40e_hw {int dummy; } ;


 int I40E_VFINT_ITRN1 (int ,int ) ;
 int IXL_RX_ITR ;
 int wr32 (struct i40e_hw*,int ,scalar_t__) ;

__attribute__((used)) static void
iavf_set_queue_rx_itr(struct ixl_rx_queue *que)
{
 struct ixl_vsi *vsi = que->vsi;
 struct i40e_hw *hw = vsi->hw;
 struct rx_ring *rxr = &que->rxr;


 if (rxr->bytes == 0)
  return;


 if (rxr->itr != vsi->rx_itr_setting) {
  rxr->itr = vsi->rx_itr_setting;
  wr32(hw, I40E_VFINT_ITRN1(IXL_RX_ITR,
      que->rxr.me), rxr->itr);
 }
}
