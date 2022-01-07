
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_configure_partition_bw_data {int dummy; } ;
struct i40e_aq_desc {int datalen; int flags; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int) ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_RD ;
 int i40e_aqc_opc_configure_partition_bw ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aqc_configure_partition_bw_data*,int,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_configure_partition_bw(struct i40e_hw *hw,
   struct i40e_aqc_configure_partition_bw_data *bw_data,
   struct i40e_asq_cmd_details *cmd_details)
{
 enum i40e_status_code status;
 struct i40e_aq_desc desc;
 u16 bwd_size = sizeof(*bw_data);

 i40e_fill_default_direct_cmd_desc(&desc,
    i40e_aqc_opc_configure_partition_bw);


 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);
 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_RD);

 desc.datalen = CPU_TO_LE16(bwd_size);

 status = i40e_asq_send_command(hw, &desc, bw_data, bwd_size, cmd_details);

 return status;
}
