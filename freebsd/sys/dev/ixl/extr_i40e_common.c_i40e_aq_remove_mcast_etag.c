
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_add_remove_mcast_etag_completion {int mcast_etags_free; int mcast_etags_used; } ;
struct i40e_aqc_add_remove_mcast_etag {void* etag; void* pv_seid; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE16 (scalar_t__) ;
 int I40E_ERR_PARAM ;
 scalar_t__ LE16_TO_CPU (int ) ;
 int i40e_aqc_opc_remove_multicast_etag ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_remove_mcast_etag(struct i40e_hw *hw, u16 pv_seid,
    u16 etag, u16 *tags_used, u16 *tags_free,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_add_remove_mcast_etag *cmd =
  (struct i40e_aqc_add_remove_mcast_etag *)&desc.params.raw;
 struct i40e_aqc_add_remove_mcast_etag_completion *resp =
    (struct i40e_aqc_add_remove_mcast_etag_completion *)&desc.params.raw;
 enum i40e_status_code status;


 if (pv_seid == 0)
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_remove_multicast_etag);

 cmd->pv_seid = CPU_TO_LE16(pv_seid);
 cmd->etag = CPU_TO_LE16(etag);

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 if (!status) {
  if (tags_used != ((void*)0))
   *tags_used = LE16_TO_CPU(resp->mcast_etags_used);
  if (tags_free != ((void*)0))
   *tags_free = LE16_TO_CPU(resp->mcast_etags_free);
 }

 return status;
}
