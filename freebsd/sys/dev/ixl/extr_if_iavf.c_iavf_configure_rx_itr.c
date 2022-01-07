
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int latency; int itr; } ;
struct ixl_vsi {int num_rx_queues; int rx_itr_setting; struct ixl_rx_queue* rx_queues; } ;
struct ixl_rx_queue {struct rx_ring rxr; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int rx_itr; struct ixl_vsi vsi; struct i40e_hw hw; } ;


 int I40E_VFINT_ITRN1 (int ,int) ;
 int IXL_AVE_LATENCY ;
 int IXL_RX_ITR ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void
iavf_configure_rx_itr(struct iavf_sc *sc)
{
 struct i40e_hw *hw = &sc->hw;
 struct ixl_vsi *vsi = &sc->vsi;
 struct ixl_rx_queue *que = vsi->rx_queues;

 vsi->rx_itr_setting = sc->rx_itr;

 for (int i = 0; i < vsi->num_rx_queues; i++, que++) {
  struct rx_ring *rxr = &que->rxr;

  wr32(hw, I40E_VFINT_ITRN1(IXL_RX_ITR, i),
      vsi->rx_itr_setting);
  rxr->itr = vsi->rx_itr_setting;
  rxr->latency = IXL_AVE_LATENCY;
 }
}
