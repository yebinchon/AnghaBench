
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_lldp_get_mib {int type; int remote_len; int local_len; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int flags; int datalen; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_LB ;
 int I40E_AQ_LARGE_BUF ;
 int I40E_AQ_LLDP_BRIDGE_TYPE_MASK ;
 int I40E_AQ_LLDP_BRIDGE_TYPE_SHIFT ;
 int I40E_AQ_LLDP_MIB_TYPE_MASK ;
 int I40E_ERR_PARAM ;
 int LE16_TO_CPU (int ) ;
 int i40e_aqc_opc_lldp_get_mib ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,void*,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
    u8 mib_type, void *buff, u16 buff_size,
    u16 *local_len, u16 *remote_len,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_lldp_get_mib *cmd =
  (struct i40e_aqc_lldp_get_mib *)&desc.params.raw;
 struct i40e_aqc_lldp_get_mib *resp =
  (struct i40e_aqc_lldp_get_mib *)&desc.params.raw;
 enum i40e_status_code status;

 if (buff_size == 0 || !buff)
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_get_mib);

 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);

 cmd->type = mib_type & I40E_AQ_LLDP_MIB_TYPE_MASK;
 cmd->type |= ((bridge_type << I40E_AQ_LLDP_BRIDGE_TYPE_SHIFT) &
         I40E_AQ_LLDP_BRIDGE_TYPE_MASK);

 desc.datalen = CPU_TO_LE16(buff_size);

 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);
 if (buff_size > I40E_AQ_LARGE_BUF)
  desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_LB);

 status = i40e_asq_send_command(hw, &desc, buff, buff_size, cmd_details);
 if (!status) {
  if (local_len != ((void*)0))
   *local_len = LE16_TO_CPU(resp->local_len);
  if (remote_len != ((void*)0))
   *remote_len = LE16_TO_CPU(resp->remote_len);
 }

 return status;
}
