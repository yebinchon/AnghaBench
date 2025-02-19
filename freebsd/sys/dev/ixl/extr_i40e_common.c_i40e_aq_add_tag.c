
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_add_tag {void* queue_number; void* flags; void* tag; void* seid; } ;
struct i40e_aqc_add_remove_tag_completion {int tags_free; int tags_used; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE16 (scalar_t__) ;
 scalar_t__ I40E_AQC_ADD_TAG_FLAG_TO_QUEUE ;
 int I40E_ERR_PARAM ;
 scalar_t__ LE16_TO_CPU (int ) ;
 int i40e_aqc_opc_add_tag ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_add_tag(struct i40e_hw *hw, bool direct_to_queue,
    u16 vsi_seid, u16 tag, u16 queue_num,
    u16 *tags_used, u16 *tags_free,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_add_tag *cmd =
  (struct i40e_aqc_add_tag *)&desc.params.raw;
 struct i40e_aqc_add_remove_tag_completion *resp =
  (struct i40e_aqc_add_remove_tag_completion *)&desc.params.raw;
 enum i40e_status_code status;

 if (vsi_seid == 0)
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_add_tag);

 cmd->seid = CPU_TO_LE16(vsi_seid);
 cmd->tag = CPU_TO_LE16(tag);
 if (direct_to_queue) {
  cmd->flags = CPU_TO_LE16(I40E_AQC_ADD_TAG_FLAG_TO_QUEUE);
  cmd->queue_number = CPU_TO_LE16(queue_num);
 }

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 if (!status) {
  if (tags_used != ((void*)0))
   *tags_used = LE16_TO_CPU(resp->tags_used);
  if (tags_free != ((void*)0))
   *tags_free = LE16_TO_CPU(resp->tags_free);
 }

 return status;
}
