
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ixl_vsi {int tx_itr_setting; int rx_itr_setting; TYPE_2__* rx_queues; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int tx_itr; int rx_itr; struct ixl_vsi vsi; struct i40e_hw hw; } ;
struct TYPE_8__ {int itr; } ;
struct TYPE_7__ {int itr; } ;
struct TYPE_5__ {int itr; } ;
struct TYPE_6__ {TYPE_1__ rxr; } ;


 int I40E_PFINT_ICR0_ENA ;
 int I40E_PFINT_ICR0_ENA_ADMINQ_MASK ;
 int I40E_PFINT_ICR0_ENA_ECC_ERR_MASK ;
 int I40E_PFINT_ICR0_ENA_GRST_MASK ;
 int I40E_PFINT_ICR0_ENA_HMC_ERR_MASK ;
 int I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK ;
 int I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK ;
 int I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK ;
 int I40E_PFINT_ICR0_ENA_VFLR_MASK ;
 int I40E_PFINT_ITR0 (int) ;
 int I40E_PFINT_LNKLST0 ;
 int I40E_PFINT_STAT_CTL0 ;
 int I40E_PFINT_STAT_CTL0_OTHER_ITR_INDX_SHIFT ;
 int I40E_QINT_RQCTL (int ) ;
 int I40E_QINT_RQCTL_CAUSE_ENA_MASK ;
 int I40E_QINT_RQCTL_ITR_INDX_SHIFT ;
 int I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT ;
 int I40E_QINT_TQCTL (int ) ;
 int I40E_QINT_TQCTL_CAUSE_ENA_MASK ;
 int I40E_QINT_TQCTL_ITR_INDX_SHIFT ;
 int I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT ;
 int I40E_QUEUE_TYPE_TX ;
 int IXL_ITR_NONE ;
 int IXL_QUEUE_EOL ;
 int IXL_RX_ITR ;
 int IXL_TX_ITR ;
 TYPE_4__* rxr ;
 TYPE_3__* txr ;
 int wr32 (struct i40e_hw*,int ,int) ;

void
ixl_configure_legacy(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 struct ixl_vsi *vsi = &pf->vsi;
 u32 reg;
 vsi->rx_queues[0].rxr.itr = vsi->rx_itr_setting;


 reg = I40E_PFINT_ICR0_ENA_ECC_ERR_MASK
     | I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK
     | I40E_PFINT_ICR0_ENA_GRST_MASK
     | I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK
     | I40E_PFINT_ICR0_ENA_HMC_ERR_MASK
     | I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK
     | I40E_PFINT_ICR0_ENA_VFLR_MASK
     | I40E_PFINT_ICR0_ENA_ADMINQ_MASK
     ;
 wr32(hw, I40E_PFINT_ICR0_ENA, reg);


 wr32(hw, I40E_PFINT_STAT_CTL0,
     IXL_ITR_NONE << I40E_PFINT_STAT_CTL0_OTHER_ITR_INDX_SHIFT);


 wr32(hw, I40E_PFINT_LNKLST0, 0);


 reg = I40E_QINT_RQCTL_CAUSE_ENA_MASK
     | (IXL_RX_ITR << I40E_QINT_RQCTL_ITR_INDX_SHIFT)
     | (I40E_QUEUE_TYPE_TX << I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT);
 wr32(hw, I40E_QINT_RQCTL(0), reg);

 reg = I40E_QINT_TQCTL_CAUSE_ENA_MASK
     | (IXL_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT)
     | (IXL_QUEUE_EOL << I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT);
 wr32(hw, I40E_QINT_TQCTL(0), reg);
}
