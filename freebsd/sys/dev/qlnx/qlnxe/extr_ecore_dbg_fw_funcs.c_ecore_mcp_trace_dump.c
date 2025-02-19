
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcp_trace {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct dbg_tools_data {scalar_t__ platform_id; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int BYTES_IN_DWORD ;
 int BYTES_TO_DWORDS (int) ;
 int DBG_GRC_PARAM_NO_MCP ;
 int DBG_STATUS_NVRAM_GET_IMAGE_FAILED ;
 int DBG_STATUS_OK ;
 int DIV_ROUND_UP (int,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 scalar_t__ OSAL_NVM_IS_ACCESS_ENABLED (struct ecore_hwfn*) ;
 scalar_t__ PLATFORM_ASIC ;
 int ecore_dump_common_global_params (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ;
 int ecore_dump_last_section (int*,int,int) ;
 int ecore_dump_num_param (int*,int,char*,int) ;
 int ecore_dump_section_hdr (int*,int,char*,int) ;
 int ecore_dump_str_param (int*,int,char*,char*) ;
 int ecore_grc_dump_addr_range (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int,int,int) ;
 int ecore_grc_get_param (struct ecore_hwfn*,int ) ;
 int ecore_mcp_halt (struct ecore_hwfn*,struct ecore_ptt*) ;
 scalar_t__ ecore_mcp_resume (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_trace_get_data_info (struct ecore_hwfn*,struct ecore_ptt*,int*,int*) ;
 int ecore_mcp_trace_get_meta_info (struct ecore_hwfn*,struct ecore_ptt*,int,int*,int*,int*) ;
 int ecore_mcp_trace_read_meta (struct ecore_hwfn*,struct ecore_ptt*,int,int,int*) ;

__attribute__((used)) static enum dbg_status ecore_mcp_trace_dump(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           u32 *dump_buf,
           bool dump,
           u32 *num_dumped_dwords)
{
 u32 trace_meta_offset_bytes = 0, trace_meta_size_bytes = 0, trace_meta_size_dwords = 0;
 u32 trace_data_grc_addr, trace_data_size_bytes, trace_data_size_dwords;
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u32 running_bundle_id, offset = 0;
 enum dbg_status status;
 bool mcp_access;
 int halted = 0;

 *num_dumped_dwords = 0;

 mcp_access = dev_data->platform_id == PLATFORM_ASIC && !ecore_grc_get_param(p_hwfn, DBG_GRC_PARAM_NO_MCP);


 status = ecore_mcp_trace_get_data_info(p_hwfn, p_ptt, &trace_data_grc_addr, &trace_data_size_bytes);
 if (status != DBG_STATUS_OK)
  return status;


 offset += ecore_dump_common_global_params(p_hwfn, p_ptt, dump_buf + offset, dump, 1);
 offset += ecore_dump_str_param(dump_buf + offset, dump, "dump-type", "mcp-trace");





 if (dump && mcp_access) {
  halted = !ecore_mcp_halt(p_hwfn, p_ptt);
  if (!halted)
   DP_NOTICE(p_hwfn, 0, "MCP halt failed!\n");
 }


 trace_data_size_dwords = DIV_ROUND_UP(trace_data_size_bytes + sizeof(struct mcp_trace), BYTES_IN_DWORD);


 offset += ecore_dump_section_hdr(dump_buf + offset, dump, "mcp_trace_data", 1);
 offset += ecore_dump_num_param(dump_buf + offset, dump, "size", trace_data_size_dwords);


 offset += ecore_grc_dump_addr_range(p_hwfn, p_ptt, dump_buf + offset, dump, BYTES_TO_DWORDS(trace_data_grc_addr), trace_data_size_dwords, 0);


 if (halted && ecore_mcp_resume(p_hwfn, p_ptt))
  DP_NOTICE(p_hwfn, 0, "Failed to resume MCP after halt!\n");


 offset += ecore_dump_section_hdr(dump_buf + offset, dump, "mcp_trace_meta", 1);




 if (OSAL_NVM_IS_ACCESS_ENABLED(p_hwfn) && mcp_access) {
  status = ecore_mcp_trace_get_meta_info(p_hwfn, p_ptt, trace_data_size_bytes, &running_bundle_id, &trace_meta_offset_bytes, &trace_meta_size_bytes);
  if (status == DBG_STATUS_OK)
   trace_meta_size_dwords = BYTES_TO_DWORDS(trace_meta_size_bytes);
 }


 offset += ecore_dump_num_param(dump_buf + offset, dump, "size", trace_meta_size_dwords);


 if (dump && trace_meta_size_dwords)
  status = ecore_mcp_trace_read_meta(p_hwfn, p_ptt, trace_meta_offset_bytes, trace_meta_size_bytes, dump_buf + offset);
 if (status == DBG_STATUS_OK)
  offset += trace_meta_size_dwords;


 offset += ecore_dump_last_section(dump_buf, offset, dump);

 *num_dumped_dwords = offset;




 return mcp_access ? status : DBG_STATUS_NVRAM_GET_IMAGE_FAILED;
}
