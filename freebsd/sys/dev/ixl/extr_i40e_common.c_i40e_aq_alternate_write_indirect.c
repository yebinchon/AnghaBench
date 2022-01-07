
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_alternate_ind_write {void* length; void* address; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 void* CPU_TO_LE32 (int) ;
 int I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_LB ;
 int I40E_AQ_FLAG_RD ;
 int I40E_AQ_LARGE_BUF ;
 int I40E_ERR_PARAM ;
 int I40E_LO_DWORD (int) ;
 int i40e_aqc_opc_alternate_write_indirect ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,void*,int ,int *) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_alternate_write_indirect(struct i40e_hw *hw,
    u32 addr, u32 dw_count, void *buffer)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_alternate_ind_write *cmd_resp =
  (struct i40e_aqc_alternate_ind_write *)&desc.params.raw;
 enum i40e_status_code status;

 if (buffer == ((void*)0))
  return I40E_ERR_PARAM;


 i40e_fill_default_direct_cmd_desc(&desc,
      i40e_aqc_opc_alternate_write_indirect);

 desc.flags |= CPU_TO_LE16(I40E_AQ_FLAG_RD);
 desc.flags |= CPU_TO_LE16(I40E_AQ_FLAG_BUF);
 if (dw_count > (I40E_AQ_LARGE_BUF/4))
  desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_LB);

 cmd_resp->address = CPU_TO_LE32(addr);
 cmd_resp->length = CPU_TO_LE32(dw_count);

 status = i40e_asq_send_command(hw, &desc, buffer,
           I40E_LO_DWORD(4*dw_count), ((void*)0));

 return status;
}
