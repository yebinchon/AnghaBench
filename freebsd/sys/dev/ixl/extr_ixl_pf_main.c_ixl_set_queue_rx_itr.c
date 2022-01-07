
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rx_ring {int bytes; int itr; int latency; scalar_t__ packets; int me; } ;
struct ixl_vsi {int rx_itr_setting; struct i40e_hw* hw; scalar_t__ back; } ;
struct ixl_rx_queue {struct rx_ring rxr; struct ixl_vsi* vsi; } ;
struct ixl_pf {int rx_itr; scalar_t__ dynamic_rx_itr; } ;
struct i40e_hw {int dummy; } ;


 int I40E_PFINT_ITRN (int ,int ) ;


 int IXL_ITR_100K ;
 int IXL_ITR_20K ;
 int IXL_ITR_8K ;
 int IXL_ITR_DYNAMIC ;

 int IXL_MAX_ITR ;
 int IXL_RX_ITR ;
 int min (int,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

void
ixl_set_queue_rx_itr(struct ixl_rx_queue *que)
{
 struct ixl_vsi *vsi = que->vsi;
 struct ixl_pf *pf = (struct ixl_pf *)vsi->back;
 struct i40e_hw *hw = vsi->hw;
 struct rx_ring *rxr = &que->rxr;
 u16 rx_itr;
 u16 rx_latency = 0;
 int rx_bytes;


 if (rxr->bytes == 0)
  return;

 if (pf->dynamic_rx_itr) {
  rx_bytes = rxr->bytes/rxr->itr;
  rx_itr = rxr->itr;


  switch (rxr->latency) {
  case 128:
   if (rx_bytes > 10) {
    rx_latency = 130;
    rx_itr = IXL_ITR_20K;
   }
   break;
  case 130:
   if (rx_bytes > 20) {
    rx_latency = 129;
    rx_itr = IXL_ITR_8K;
   } else if (rx_bytes <= 10) {
    rx_latency = 128;
    rx_itr = IXL_ITR_100K;
   }
   break;
  case 129:
   if (rx_bytes <= 20) {
    rx_latency = 130;
    rx_itr = IXL_ITR_20K;
   }
   break;
          }

  rxr->latency = rx_latency;

  if (rx_itr != rxr->itr) {

   rx_itr = (10 * rx_itr * rxr->itr) /
       ((9 * rx_itr) + rxr->itr);
   rxr->itr = min(rx_itr, IXL_MAX_ITR);
   wr32(hw, I40E_PFINT_ITRN(IXL_RX_ITR,
       rxr->me), rxr->itr);
  }
 } else {
  if (vsi->rx_itr_setting & IXL_ITR_DYNAMIC)
   vsi->rx_itr_setting = pf->rx_itr;

  if (rxr->itr != vsi->rx_itr_setting) {
   rxr->itr = vsi->rx_itr_setting;
   wr32(hw, I40E_PFINT_ITRN(IXL_RX_ITR,
       rxr->me), rxr->itr);
  }
 }
 rxr->bytes = 0;
 rxr->packets = 0;
}
