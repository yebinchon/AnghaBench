
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int state; struct i40e_hw hw; } ;
typedef int if_ctx_t ;


 int IXL_PF_STATE_ADAPTER_RESETTING ;
 int IXL_PF_STATE_MDD_PENDING ;
 int iflib_admin_intr_deferred (int ) ;
 struct ixl_pf* iflib_get_softc (int ) ;
 int ixl_enable_intr0 (struct i40e_hw*) ;
 int ixl_handle_empr_reset (struct ixl_pf*) ;
 int ixl_handle_mdd_event (struct ixl_pf*) ;
 int ixl_process_adminq (struct ixl_pf*,scalar_t__*) ;
 int ixl_update_link_status (struct ixl_pf*) ;
 int ixl_update_stats_counters (struct ixl_pf*) ;

__attribute__((used)) static void
ixl_if_update_admin_status(if_ctx_t ctx)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct i40e_hw *hw = &pf->hw;
 u16 pending;

 if (pf->state & IXL_PF_STATE_ADAPTER_RESETTING)
  ixl_handle_empr_reset(pf);

 if (pf->state & IXL_PF_STATE_MDD_PENDING)
  ixl_handle_mdd_event(pf);

 ixl_process_adminq(pf, &pending);
 ixl_update_link_status(pf);
 ixl_update_stats_counters(pf);





 if (pending > 0)
  iflib_admin_intr_deferred(ctx);
 else
  ixl_enable_intr0(hw);
}
