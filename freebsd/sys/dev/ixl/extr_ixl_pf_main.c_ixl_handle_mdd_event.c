
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int state; struct i40e_hw hw; } ;


 int I40E_PFINT_ICR0_ENA ;
 int I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK ;
 int IXL_PF_STATE_MDD_PENDING ;
 int atomic_clear_32 (int *,int ) ;
 int ixl_flush (struct i40e_hw*) ;
 int ixl_handle_rx_mdd_event (struct ixl_pf*) ;
 int ixl_handle_tx_mdd_event (struct ixl_pf*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

void
ixl_handle_mdd_event(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u32 reg;





 ixl_handle_tx_mdd_event(pf);
 ixl_handle_rx_mdd_event(pf);

 atomic_clear_32(&pf->state, IXL_PF_STATE_MDD_PENDING);


 reg = rd32(hw, I40E_PFINT_ICR0_ENA);
 reg |= I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
 wr32(hw, I40E_PFINT_ICR0_ENA, reg);
 ixl_flush(hw);
}
