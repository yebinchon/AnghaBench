
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {int latency; int itr; } ;
struct ixl_vsi {int num_tx_queues; int tx_itr_setting; struct ixl_tx_queue* tx_queues; } ;
struct ixl_tx_queue {struct tx_ring txr; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int tx_itr; struct ixl_vsi vsi; struct i40e_hw hw; } ;


 int I40E_PFINT_ITRN (int ,int) ;
 int IXL_AVE_LATENCY ;
 int IXL_TX_ITR ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void
ixl_configure_tx_itr(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 struct ixl_vsi *vsi = &pf->vsi;
 struct ixl_tx_queue *que = vsi->tx_queues;

 vsi->tx_itr_setting = pf->tx_itr;

 for (int i = 0; i < vsi->num_tx_queues; i++, que++) {
  struct tx_ring *txr = &que->txr;

  wr32(hw, I40E_PFINT_ITRN(IXL_TX_ITR, i),
      vsi->tx_itr_setting);
  txr->itr = vsi->tx_itr_setting;
  txr->latency = IXL_AVE_LATENCY;
 }
}
