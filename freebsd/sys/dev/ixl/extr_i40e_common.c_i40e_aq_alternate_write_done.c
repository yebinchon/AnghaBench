
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_alternate_write_done {int cmd_flags; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 int I40E_AQ_ALTERNATE_RESET_NEEDED ;
 int I40E_ERR_PARAM ;
 int LE16_TO_CPU (int ) ;
 int i40e_aqc_opc_alternate_write_done ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,int *) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_alternate_write_done(struct i40e_hw *hw,
  u8 bios_mode, bool *reset_needed)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_alternate_write_done *cmd =
  (struct i40e_aqc_alternate_write_done *)&desc.params.raw;
 enum i40e_status_code status;

 if (reset_needed == ((void*)0))
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_alternate_write_done);

 cmd->cmd_flags = CPU_TO_LE16(bios_mode);

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, ((void*)0));
 if (!status && reset_needed)
  *reset_needed = ((LE16_TO_CPU(cmd->cmd_flags) &
     I40E_AQ_ALTERNATE_RESET_NEEDED) != 0);

 return status;
}
