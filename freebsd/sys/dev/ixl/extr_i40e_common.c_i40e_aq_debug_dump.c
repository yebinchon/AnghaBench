
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_debug_dump_internals {int idx; void* table_id; void* cluster_id; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int datalen; int flags; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 int CPU_TO_LE32 (int ) ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_LB ;
 int I40E_AQ_LARGE_BUF ;
 int I40E_ERR_PARAM ;
 int LE16_TO_CPU (int ) ;
 int LE32_TO_CPU (int ) ;
 int i40e_aqc_opc_debug_dump_internals ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,void*,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
    u8 table_id, u32 start_index, u16 buff_size,
    void *buff, u16 *ret_buff_size,
    u8 *ret_next_table, u32 *ret_next_index,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_debug_dump_internals *cmd =
  (struct i40e_aqc_debug_dump_internals *)&desc.params.raw;
 struct i40e_aqc_debug_dump_internals *resp =
  (struct i40e_aqc_debug_dump_internals *)&desc.params.raw;
 enum i40e_status_code status;

 if (buff_size == 0 || !buff)
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_debug_dump_internals);

 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);
 if (buff_size > I40E_AQ_LARGE_BUF)
  desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_LB);

 cmd->cluster_id = cluster_id;
 cmd->table_id = table_id;
 cmd->idx = CPU_TO_LE32(start_index);

 desc.datalen = CPU_TO_LE16(buff_size);

 status = i40e_asq_send_command(hw, &desc, buff, buff_size, cmd_details);
 if (!status) {
  if (ret_buff_size != ((void*)0))
   *ret_buff_size = LE16_TO_CPU(desc.datalen);
  if (ret_next_table != ((void*)0))
   *ret_next_table = resp->table_id;
  if (ret_next_index != ((void*)0))
   *ret_next_index = LE32_TO_CPU(resp->idx);
 }

 return status;
}
