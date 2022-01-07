
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tx_ring {int bytes; int itr; int latency; scalar_t__ packets; int me; } ;
struct ixl_vsi {int tx_itr_setting; struct i40e_hw* hw; scalar_t__ back; } ;
struct ixl_tx_queue {struct tx_ring txr; struct ixl_vsi* vsi; } ;
struct ixl_pf {int tx_itr; scalar_t__ dynamic_tx_itr; } ;
struct i40e_hw {int dummy; } ;


 int I40E_PFINT_ITRN (int ,int ) ;


 int IXL_ITR_100K ;
 int IXL_ITR_20K ;
 int IXL_ITR_8K ;
 int IXL_ITR_DYNAMIC ;

 int IXL_MAX_ITR ;
 int IXL_TX_ITR ;
 int min (int,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

void
ixl_set_queue_tx_itr(struct ixl_tx_queue *que)
{
 struct ixl_vsi *vsi = que->vsi;
 struct ixl_pf *pf = (struct ixl_pf *)vsi->back;
 struct i40e_hw *hw = vsi->hw;
 struct tx_ring *txr = &que->txr;
 u16 tx_itr;
 u16 tx_latency = 0;
 int tx_bytes;



 if (txr->bytes == 0)
  return;

 if (pf->dynamic_tx_itr) {
  tx_bytes = txr->bytes/txr->itr;
  tx_itr = txr->itr;

  switch (txr->latency) {
  case 128:
   if (tx_bytes > 10) {
    tx_latency = 130;
    tx_itr = IXL_ITR_20K;
   }
   break;
  case 130:
   if (tx_bytes > 20) {
    tx_latency = 129;
    tx_itr = IXL_ITR_8K;
   } else if (tx_bytes <= 10) {
    tx_latency = 128;
    tx_itr = IXL_ITR_100K;
   }
   break;
  case 129:
   if (tx_bytes <= 20) {
    tx_latency = 130;
    tx_itr = IXL_ITR_20K;
   }
   break;
  }

  txr->latency = tx_latency;

  if (tx_itr != txr->itr) {

   tx_itr = (10 * tx_itr * txr->itr) /
       ((9 * tx_itr) + txr->itr);
   txr->itr = min(tx_itr, IXL_MAX_ITR);
   wr32(hw, I40E_PFINT_ITRN(IXL_TX_ITR,
       txr->me), txr->itr);
  }

 } else {
  if (vsi->tx_itr_setting & IXL_ITR_DYNAMIC)
   vsi->tx_itr_setting = pf->tx_itr;

  if (txr->itr != vsi->tx_itr_setting) {
   txr->itr = vsi->tx_itr_setting;
   wr32(hw, I40E_PFINT_ITRN(IXL_TX_ITR,
       txr->me), txr->itr);
  }
 }
 txr->bytes = 0;
 txr->packets = 0;
 return;
}
