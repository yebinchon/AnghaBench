
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {int latency; int itr; } ;
struct ixl_vsi {int num_tx_queues; int tx_itr_setting; struct ixl_tx_queue* tx_queues; } ;
struct ixl_tx_queue {struct tx_ring txr; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int tx_itr; struct ixl_vsi vsi; struct i40e_hw hw; } ;


 int I40E_VFINT_ITRN1 (int ,int) ;
 int IXL_AVE_LATENCY ;
 int IXL_TX_ITR ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void
iavf_configure_tx_itr(struct iavf_sc *sc)
{
 struct i40e_hw *hw = &sc->hw;
 struct ixl_vsi *vsi = &sc->vsi;
 struct ixl_tx_queue *que = vsi->tx_queues;

 vsi->tx_itr_setting = sc->tx_itr;

 for (int i = 0; i < vsi->num_tx_queues; i++, que++) {
  struct tx_ring *txr = &que->txr;

  wr32(hw, I40E_VFINT_ITRN1(IXL_TX_ITR, i),
      vsi->tx_itr_setting);
  txr->itr = vsi->tx_itr_setting;
  txr->latency = IXL_AVE_LATENCY;
 }
}
