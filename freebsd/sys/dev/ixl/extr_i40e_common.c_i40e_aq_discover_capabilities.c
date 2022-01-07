
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_list_capabilites {int count; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int datalen; int flags; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef enum i40e_admin_queue_opc { ____Placeholder_i40e_admin_queue_opc } i40e_admin_queue_opc ;


 int CPU_TO_LE16 (int ) ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_LB ;
 int I40E_AQ_LARGE_BUF ;
 int I40E_ERR_PARAM ;
 int I40E_SUCCESS ;
 int LE16_TO_CPU (int ) ;
 int LE32_TO_CPU (int ) ;
 int i40e_aqc_opc_list_dev_capabilities ;
 int i40e_aqc_opc_list_func_capabilities ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,void*,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int) ;
 int i40e_parse_discover_capabilities (struct i40e_hw*,void*,int ,int) ;

enum i40e_status_code i40e_aq_discover_capabilities(struct i40e_hw *hw,
    void *buff, u16 buff_size, u16 *data_size,
    enum i40e_admin_queue_opc list_type_opc,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aqc_list_capabilites *cmd;
 struct i40e_aq_desc desc;
 enum i40e_status_code status = I40E_SUCCESS;

 cmd = (struct i40e_aqc_list_capabilites *)&desc.params.raw;

 if (list_type_opc != i40e_aqc_opc_list_func_capabilities &&
  list_type_opc != i40e_aqc_opc_list_dev_capabilities) {
  status = I40E_ERR_PARAM;
  goto exit;
 }

 i40e_fill_default_direct_cmd_desc(&desc, list_type_opc);

 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);
 if (buff_size > I40E_AQ_LARGE_BUF)
  desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_LB);

 status = i40e_asq_send_command(hw, &desc, buff, buff_size, cmd_details);
 *data_size = LE16_TO_CPU(desc.datalen);

 if (status)
  goto exit;

 i40e_parse_discover_capabilities(hw, buff, LE32_TO_CPU(cmd->count),
      list_type_opc);

exit:
 return status;
}
