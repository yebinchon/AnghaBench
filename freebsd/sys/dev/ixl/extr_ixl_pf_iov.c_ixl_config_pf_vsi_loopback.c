
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixl_vsi {int seid; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; int pf_id; } ;
struct ixl_pf {scalar_t__ veb_seid; struct ixl_vsi vsi; int dev; struct i40e_hw hw; } ;
struct TYPE_3__ {void* switch_id; void* valid_sections; } ;
struct i40e_vsi_context {scalar_t__ uplink_seid; TYPE_1__ info; int connection_type; int pf_num; int seid; } ;
typedef int device_t ;
typedef int ctxt ;


 int I40E_AQ_VSI_PROP_SWITCH_VALID ;
 int I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB ;
 int IXL_VSI_DATA_PORT ;
 int device_printf (int ,char*,int,int ) ;
 void* htole16 (int ) ;
 int i40e_aq_update_vsi_params (struct i40e_hw*,struct i40e_vsi_context*,int *) ;
 int memset (struct i40e_vsi_context*,int ,int) ;

__attribute__((used)) static int
ixl_config_pf_vsi_loopback(struct ixl_pf *pf, bool enable)
{
 struct i40e_hw *hw = &pf->hw;
 device_t dev = pf->dev;
 struct ixl_vsi *vsi = &pf->vsi;
 struct i40e_vsi_context ctxt;
 int error;

 memset(&ctxt, 0, sizeof(ctxt));

 ctxt.seid = vsi->seid;
 if (pf->veb_seid != 0)
  ctxt.uplink_seid = pf->veb_seid;
 ctxt.pf_num = hw->pf_id;
 ctxt.connection_type = IXL_VSI_DATA_PORT;

 ctxt.info.valid_sections = htole16(I40E_AQ_VSI_PROP_SWITCH_VALID);
 ctxt.info.switch_id = (enable) ?
     htole16(I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB) : 0;


 error = i40e_aq_update_vsi_params(hw, &ctxt, ((void*)0));
 if (error) {
  device_printf(dev, "i40e_aq_update_vsi_params() failed, error %d,"
      " aq_error %d\n", error, hw->aq.asq_last_status);
 }

 return (error);
}
