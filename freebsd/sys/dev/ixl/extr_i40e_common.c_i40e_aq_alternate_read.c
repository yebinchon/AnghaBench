
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_alternate_write {int data1; int data0; void* address1; void* address0; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE32 (int ) ;
 int I40E_ERR_PARAM ;
 int I40E_SUCCESS ;
 int LE32_TO_CPU (int ) ;
 int i40e_aqc_opc_alternate_read ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,int *) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_alternate_read(struct i40e_hw *hw,
    u32 reg_addr0, u32 *reg_val0,
    u32 reg_addr1, u32 *reg_val1)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_alternate_write *cmd_resp =
  (struct i40e_aqc_alternate_write *)&desc.params.raw;
 enum i40e_status_code status;

 if (reg_val0 == ((void*)0))
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_alternate_read);
 cmd_resp->address0 = CPU_TO_LE32(reg_addr0);
 cmd_resp->address1 = CPU_TO_LE32(reg_addr1);

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, ((void*)0));

 if (status == I40E_SUCCESS) {
  *reg_val0 = LE32_TO_CPU(cmd_resp->data0);

  if (reg_val1 != ((void*)0))
   *reg_val1 = LE32_TO_CPU(cmd_resp->data1);
 }

 return status;
}
