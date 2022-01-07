
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
typedef void* u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct dbg_dump_mem {int dword1; int dword0; } ;
struct TYPE_4__ {int data; } ;
struct dbg_dump_cond_hdr {size_t data_size; size_t block_id; TYPE_1__ mode; } ;
struct dbg_array {size_t size_in_dwords; int * ptr; } ;
typedef enum block_id { ____Placeholder_block_id } block_id ;
struct TYPE_6__ {size_t storm_id; scalar_t__ associated_to_storm; } ;
struct TYPE_5__ {char letter; } ;


 int DBG_DUMP_MEM_ADDRESS ;
 int DBG_DUMP_MEM_LENGTH ;
 int DBG_DUMP_MEM_MEM_GROUP_ID ;
 int DBG_DUMP_MEM_WIDE_BUS ;
 int DBG_GRC_PARAM_NUM_LCIDS ;
 int DBG_GRC_PARAM_NUM_LTIDS ;
 int DBG_MODE_HDR_EVAL_MODE ;
 int DBG_MODE_HDR_MODES_BUF_OFFSET ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 void* GET_FIELD (int ,int ) ;
 size_t MAX_LCIDS ;
 size_t MAX_LTIDS ;
 size_t MEM_DUMP_ENTRY_SIZE_DWORDS ;
 size_t MEM_GROUPS_NUM ;
 size_t MEM_GROUP_CONN_CFC_MEM ;
 size_t MEM_GROUP_TASK_CFC_MEM ;
 int OSAL_NULL ;
 size_t ecore_grc_dump_mem (struct ecore_hwfn*,struct ecore_ptt*,size_t*,int,int ,size_t,size_t,int,int ,int,int ,int,char) ;
 size_t ecore_grc_get_param (struct ecore_hwfn*,int ) ;
 int ecore_grc_is_mem_included (struct ecore_hwfn*,int,size_t) ;
 int ecore_is_mode_match (struct ecore_hwfn*,void**) ;
 TYPE_3__** s_block_defs ;
 int * s_mem_group_names ;
 TYPE_2__* s_storm_defs ;

__attribute__((used)) static u32 ecore_grc_dump_mem_entries(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           struct dbg_array input_mems_arr,
           u32 *dump_buf,
           bool dump)
{
 u32 i, offset = 0, input_offset = 0;
 bool mode_match = 1;

 while (input_offset < input_mems_arr.size_in_dwords) {
  const struct dbg_dump_cond_hdr *cond_hdr;
  u16 modes_buf_offset;
  u32 num_entries;
  bool eval_mode;

  cond_hdr = (const struct dbg_dump_cond_hdr *)&input_mems_arr.ptr[input_offset++];
  num_entries = cond_hdr->data_size / MEM_DUMP_ENTRY_SIZE_DWORDS;


  eval_mode = GET_FIELD(cond_hdr->mode.data, DBG_MODE_HDR_EVAL_MODE) > 0;
  if (eval_mode) {
   modes_buf_offset = GET_FIELD(cond_hdr->mode.data, DBG_MODE_HDR_MODES_BUF_OFFSET);
   mode_match = ecore_is_mode_match(p_hwfn, &modes_buf_offset);
  }

  if (!mode_match) {
   input_offset += cond_hdr->data_size;
   continue;
  }

  for (i = 0; i < num_entries; i++, input_offset += MEM_DUMP_ENTRY_SIZE_DWORDS) {
   const struct dbg_dump_mem *mem = (const struct dbg_dump_mem *)&input_mems_arr.ptr[input_offset];
   u8 mem_group_id = GET_FIELD(mem->dword0, DBG_DUMP_MEM_MEM_GROUP_ID);
   bool is_storm = 0, mem_wide_bus;
   char storm_letter = 'a';
   u32 mem_addr, mem_len;

   if (mem_group_id >= MEM_GROUPS_NUM) {
    DP_NOTICE(p_hwfn, 1, "Invalid mem_group_id\n");
    return 0;
   }

   if (!ecore_grc_is_mem_included(p_hwfn, (enum block_id)cond_hdr->block_id, mem_group_id))
    continue;

   mem_addr = GET_FIELD(mem->dword0, DBG_DUMP_MEM_ADDRESS);
   mem_len = GET_FIELD(mem->dword1, DBG_DUMP_MEM_LENGTH);
   mem_wide_bus = GET_FIELD(mem->dword1, DBG_DUMP_MEM_WIDE_BUS);




   if (mem_group_id == MEM_GROUP_CONN_CFC_MEM) {
    if (mem_len % MAX_LCIDS) {
     DP_NOTICE(p_hwfn, 1, "Invalid CCFC connection memory size\n");
     return 0;
    }

    mem_len = ecore_grc_get_param(p_hwfn, DBG_GRC_PARAM_NUM_LCIDS) * (mem_len / MAX_LCIDS);
   }
   else if (mem_group_id == MEM_GROUP_TASK_CFC_MEM) {
    if (mem_len % MAX_LTIDS) {
     DP_NOTICE(p_hwfn, 1, "Invalid TCFC task memory size\n");
     return 0;
    }

    mem_len = ecore_grc_get_param(p_hwfn, DBG_GRC_PARAM_NUM_LTIDS) * (mem_len / MAX_LTIDS);
   }




   if (s_block_defs[cond_hdr->block_id]->associated_to_storm) {
    is_storm = 1;
    storm_letter = s_storm_defs[s_block_defs[cond_hdr->block_id]->storm_id].letter;
   }


   offset += ecore_grc_dump_mem(p_hwfn, p_ptt, dump_buf + offset, dump, OSAL_NULL, mem_addr, mem_len, mem_wide_bus,
    0, 0, s_mem_group_names[mem_group_id], is_storm, storm_letter);
  }
 }

 return offset;
}
