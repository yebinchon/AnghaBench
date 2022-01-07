
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct i40e_vsi_context {void* vsis_unallocated; void* vsis_allocated; void* vsi_number; void* seid; int info; } ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_add_get_update_vsi_completion {int vsi_free; int vsi_used; int vsi_number; int seid; } ;
struct i40e_aqc_add_get_update_vsi {int uplink_seid; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (void*) ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 int I40E_SUCCESS ;
 void* LE16_TO_CPU (int ) ;
 int i40e_aqc_opc_get_vsi_parameters ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int,int *) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_get_vsi_params(struct i40e_hw *hw,
    struct i40e_vsi_context *vsi_ctx,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_add_get_update_vsi *cmd =
  (struct i40e_aqc_add_get_update_vsi *)&desc.params.raw;
 struct i40e_aqc_add_get_update_vsi_completion *resp =
  (struct i40e_aqc_add_get_update_vsi_completion *)
  &desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_get_vsi_parameters);

 cmd->uplink_seid = CPU_TO_LE16(vsi_ctx->seid);

 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);

 status = i40e_asq_send_command(hw, &desc, &vsi_ctx->info,
        sizeof(vsi_ctx->info), ((void*)0));

 if (status != I40E_SUCCESS)
  goto aq_get_vsi_params_exit;

 vsi_ctx->seid = LE16_TO_CPU(resp->seid);
 vsi_ctx->vsi_number = LE16_TO_CPU(resp->vsi_number);
 vsi_ctx->vsis_allocated = LE16_TO_CPU(resp->vsi_used);
 vsi_ctx->vsis_unallocated = LE16_TO_CPU(resp->vsi_free);

aq_get_vsi_params_exit:
 return status;
}
