
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixl_vsi {int num_tx_queues; int num_rx_queues; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct ixl_vsi vsi; struct i40e_hw hw; } ;


 int I40E_PFINT_DYN_CTLN (int) ;
 int I40E_PFINT_LNKLSTN (int) ;
 int I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK ;
 int I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT ;
 int I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_MASK ;
 int I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT ;
 int I40E_QINT_RQCTL (int) ;
 int I40E_QINT_RQCTL_CAUSE_ENA_MASK ;
 int I40E_QINT_RQCTL_ITR_INDX_SHIFT ;
 int I40E_QINT_RQCTL_MSIX_INDX_SHIFT ;
 int I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT ;
 int I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT ;
 int I40E_QINT_TQCTL (int) ;
 int I40E_QINT_TQCTL_CAUSE_ENA_MASK ;
 int I40E_QINT_TQCTL_ITR_INDX_SHIFT ;
 int I40E_QINT_TQCTL_MSIX_INDX_SHIFT ;
 int I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT ;
 int I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT ;
 int I40E_QUEUE_TYPE_RX ;
 int I40E_QUEUE_TYPE_TX ;
 int IXL_QUEUE_EOL ;
 int IXL_RX_ITR ;
 int IXL_TX_ITR ;
 int max (int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

void
ixl_configure_queue_intr_msix(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 struct ixl_vsi *vsi = &pf->vsi;
 u32 reg;
 u16 vector = 1;


 for (int i = 0; i < max(vsi->num_rx_queues, vsi->num_tx_queues); i++, vector++) {

  wr32(hw, I40E_PFINT_DYN_CTLN(i), 0);


  reg = ((i << I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT)
          & I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK) |
      ((I40E_QUEUE_TYPE_RX << I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT)
          & I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_MASK);
  wr32(hw, I40E_PFINT_LNKLSTN(i), reg);

  reg = I40E_QINT_RQCTL_CAUSE_ENA_MASK |
  (IXL_RX_ITR << I40E_QINT_RQCTL_ITR_INDX_SHIFT) |
  (vector << I40E_QINT_RQCTL_MSIX_INDX_SHIFT) |
  (i << I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT) |
  (I40E_QUEUE_TYPE_TX << I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT);
  wr32(hw, I40E_QINT_RQCTL(i), reg);

  reg = I40E_QINT_TQCTL_CAUSE_ENA_MASK |
  (IXL_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT) |
  (vector << I40E_QINT_TQCTL_MSIX_INDX_SHIFT) |
  (IXL_QUEUE_EOL << I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT) |
  (I40E_QUEUE_TYPE_RX << I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT);
  wr32(hw, I40E_QINT_TQCTL(i), reg);
 }
}
