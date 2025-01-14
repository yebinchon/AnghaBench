
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_control_filter_stats {void* etype_free; void* mac_etype_free; void* etype_used; void* mac_etype_used; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_add_remove_control_packet_filter_completion {int etype_free; int mac_etype_free; int etype_used; int mac_etype_used; } ;
struct i40e_aqc_add_remove_control_packet_filter {void* seid; void* flags; void* etype; int mac; void* queue; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE16 (scalar_t__) ;
 int ETH_ALEN ;
 int I40E_ERR_PARAM ;
 int I40E_NONDMA_TO_NONDMA ;
 void* LE16_TO_CPU (int ) ;
 int i40e_aqc_opc_add_control_packet_filter ;
 int i40e_aqc_opc_remove_control_packet_filter ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;
 int i40e_memcpy (int ,int *,int ,int ) ;

enum i40e_status_code i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
    u8 *mac_addr, u16 ethtype, u16 flags,
    u16 vsi_seid, u16 queue, bool is_add,
    struct i40e_control_filter_stats *stats,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_add_remove_control_packet_filter *cmd =
  (struct i40e_aqc_add_remove_control_packet_filter *)
  &desc.params.raw;
 struct i40e_aqc_add_remove_control_packet_filter_completion *resp =
  (struct i40e_aqc_add_remove_control_packet_filter_completion *)
  &desc.params.raw;
 enum i40e_status_code status;

 if (vsi_seid == 0)
  return I40E_ERR_PARAM;

 if (is_add) {
  i40e_fill_default_direct_cmd_desc(&desc,
    i40e_aqc_opc_add_control_packet_filter);
  cmd->queue = CPU_TO_LE16(queue);
 } else {
  i40e_fill_default_direct_cmd_desc(&desc,
    i40e_aqc_opc_remove_control_packet_filter);
 }

 if (mac_addr)
  i40e_memcpy(cmd->mac, mac_addr, ETH_ALEN,
       I40E_NONDMA_TO_NONDMA);

 cmd->etype = CPU_TO_LE16(ethtype);
 cmd->flags = CPU_TO_LE16(flags);
 cmd->seid = CPU_TO_LE16(vsi_seid);

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 if (!status && stats) {
  stats->mac_etype_used = LE16_TO_CPU(resp->mac_etype_used);
  stats->etype_used = LE16_TO_CPU(resp->etype_used);
  stats->mac_etype_free = LE16_TO_CPU(resp->mac_etype_free);
  stats->etype_free = LE16_TO_CPU(resp->etype_free);
 }

 return status;
}
