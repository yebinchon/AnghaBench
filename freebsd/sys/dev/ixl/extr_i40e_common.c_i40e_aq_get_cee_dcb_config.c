
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aq_desc {int flags; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 int I40E_ERR_PARAM ;
 int i40e_aqc_opc_get_cee_dcb_cfg ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,void*,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
    void *buff, u16 buff_size,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 enum i40e_status_code status;

 if (buff_size == 0 || !buff)
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_get_cee_dcb_cfg);

 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);
 status = i40e_asq_send_command(hw, &desc, (void *)buff, buff_size,
           cmd_details);

 return status;
}
