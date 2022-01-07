
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixl_vsi {TYPE_1__* ifp; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int state; struct i40e_hw hw; struct ixl_vsi vsi; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int I40E_GLGEN_RSTAT ;
 int I40E_GLGEN_RSTAT_DEVSTATE_MASK ;
 int IFF_DRV_RUNNING ;
 int IXL_DBG_INFO ;
 int IXL_PF_STATE_ADAPTER_RESETTING ;
 int atomic_clear_int (int *,int ) ;
 int i40e_msec_delay (int) ;
 int ixl_dbg (struct ixl_pf*,int ,char*,int) ;
 int ixl_prepare_for_reset (struct ixl_pf*,int) ;
 int ixl_rebuild_hw_structs_after_reset (struct ixl_pf*) ;
 int rd32 (struct i40e_hw*,int ) ;

void
ixl_handle_empr_reset(struct ixl_pf *pf)
{
 struct ixl_vsi *vsi = &pf->vsi;
 struct i40e_hw *hw = &pf->hw;
 bool is_up = !!(vsi->ifp->if_drv_flags & IFF_DRV_RUNNING);
 int count = 0;
 u32 reg;

 ixl_prepare_for_reset(pf, is_up);


 while (count++ < 100) {
  reg = rd32(hw, I40E_GLGEN_RSTAT)
   & I40E_GLGEN_RSTAT_DEVSTATE_MASK;
  if (reg)
   i40e_msec_delay(100);
  else
   break;
 }
 ixl_dbg(pf, IXL_DBG_INFO,
   "Reset wait count: %d\n", count);

 ixl_rebuild_hw_structs_after_reset(pf);

 atomic_clear_int(&pf->state, IXL_PF_STATE_ADAPTER_RESETTING);
}
