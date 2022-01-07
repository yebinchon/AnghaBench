
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {struct i40e_hw hw; } ;
typedef int if_ctx_t ;


 int I40E_VFGEN_RSTAT ;
 int I40E_VFGEN_RSTAT_VFR_STATE_MASK ;
 int VIRTCHNL_VFR_COMPLETED ;
 int VIRTCHNL_VFR_VFACTIVE ;
 int iavf_dbg_info (struct iavf_sc*,char*,int) ;
 int iavf_request_stats (struct iavf_sc*) ;
 int iflib_admin_intr_deferred (int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static void
iavf_if_timer(if_ctx_t ctx, uint16_t qid)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct i40e_hw *hw = &sc->hw;
 u32 val;

 if (qid != 0)
  return;


 val = rd32(hw, I40E_VFGEN_RSTAT) &
     I40E_VFGEN_RSTAT_VFR_STATE_MASK;
 if (val != VIRTCHNL_VFR_VFACTIVE
     && val != VIRTCHNL_VFR_COMPLETED) {
  iavf_dbg_info(sc, "reset in progress! (%d)\n", val);
  return;
 }


 iflib_admin_intr_deferred(ctx);


 iavf_request_stats(sc);
}
