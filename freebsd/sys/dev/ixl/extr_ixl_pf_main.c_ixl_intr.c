
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixl_vsi {int ctx; struct ixl_rx_queue* rx_queues; } ;
struct ixl_rx_queue {int irqs; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {scalar_t__ msix; struct ixl_vsi vsi; struct i40e_hw hw; } ;


 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTLN_CLEARPBA_MASK ;
 int I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT ;
 int I40E_PFINT_ICR0 ;
 int I40E_PFINT_ICR0_ADMINQ_MASK ;
 int I40E_PFINT_ICR0_QUEUE_0_MASK ;
 int I40E_PFINT_ICR0_VFLR_MASK ;
 int IXL_ITR_NONE ;
 int iflib_admin_intr_deferred (int ) ;
 int iflib_iov_intr_deferred (int ) ;
 int ixl_enable_intr0 (struct i40e_hw*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

int
ixl_intr(void *arg)
{
 struct ixl_pf *pf = arg;
 struct i40e_hw *hw = &pf->hw;
 struct ixl_vsi *vsi = &pf->vsi;
 struct ixl_rx_queue *que = vsi->rx_queues;
        u32 icr0;


 ++que->irqs;
 icr0 = rd32(hw, I40E_PFINT_ICR0);
 if (icr0 & I40E_PFINT_ICR0_ADMINQ_MASK)
  iflib_admin_intr_deferred(vsi->ctx);


 ixl_enable_intr0(hw);

 if (icr0 & I40E_PFINT_ICR0_QUEUE_0_MASK)
  return (FILTER_SCHEDULE_THREAD);
 else
  return (FILTER_HANDLED);
}
