
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_pf_vf_message {void* id; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int datalen; int flags; void* cookie_low; void* cookie_high; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 void* CPU_TO_LE32 (int ) ;
 int I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_LB ;
 int I40E_AQ_FLAG_RD ;
 scalar_t__ I40E_AQ_FLAG_SI ;
 int I40E_AQ_LARGE_BUF ;
 int i40e_aqc_opc_send_msg_to_vf ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_send_msg_to_vf(struct i40e_hw *hw, u16 vfid,
    u32 v_opcode, u32 v_retval, u8 *msg, u16 msglen,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_pf_vf_message *cmd =
  (struct i40e_aqc_pf_vf_message *)&desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_send_msg_to_vf);
 cmd->id = CPU_TO_LE32(vfid);
 desc.cookie_high = CPU_TO_LE32(v_opcode);
 desc.cookie_low = CPU_TO_LE32(v_retval);
 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_SI);
 if (msglen) {
  desc.flags |= CPU_TO_LE16((u16)(I40E_AQ_FLAG_BUF |
      I40E_AQ_FLAG_RD));
  if (msglen > I40E_AQ_LARGE_BUF)
   desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_LB);
  desc.datalen = CPU_TO_LE16(msglen);
 }
 status = i40e_asq_send_command(hw, &desc, msg, msglen, cmd_details);

 return status;
}
