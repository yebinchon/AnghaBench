
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int BYTES_TO_DWORDS (int ) ;
 int DBG_STATUS_OK ;
 int IGU_FIFO_DEPTH_DWORDS ;
 int IGU_FIFO_ELEMENT_DWORDS ;
 int IGU_REG_ERROR_HANDLING_DATA_VALID ;
 int IGU_REG_ERROR_HANDLING_MEMORY ;
 int ecore_dump_common_global_params (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ;
 int ecore_dump_last_section (int*,int,int) ;
 int ecore_dump_num_param (int*,int,char*,int) ;
 int ecore_dump_section_hdr (int*,int,char*,int) ;
 int ecore_dump_str_param (int*,int,char*,char*) ;
 int ecore_grc_dump_addr_range (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int ,int,int) ;
 scalar_t__ ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

__attribute__((used)) static enum dbg_status ecore_igu_fifo_dump(struct ecore_hwfn *p_hwfn,
             struct ecore_ptt *p_ptt,
             u32 *dump_buf,
             bool dump,
             u32 *num_dumped_dwords)
{
 u32 dwords_read, size_param_offset, offset = 0;
 bool fifo_has_data;

 *num_dumped_dwords = 0;


 offset += ecore_dump_common_global_params(p_hwfn, p_ptt, dump_buf + offset, dump, 1);
 offset += ecore_dump_str_param(dump_buf + offset, dump, "dump-type", "igu-fifo");




 offset += ecore_dump_section_hdr(dump_buf + offset, dump, "igu_fifo_data", 1);
 size_param_offset = offset;
 offset += ecore_dump_num_param(dump_buf + offset, dump, "size", 0);

 if (dump) {
  fifo_has_data = ecore_rd(p_hwfn, p_ptt, IGU_REG_ERROR_HANDLING_DATA_VALID) > 0;






  for (dwords_read = 0; fifo_has_data && dwords_read < IGU_FIFO_DEPTH_DWORDS; dwords_read += IGU_FIFO_ELEMENT_DWORDS) {
   offset += ecore_grc_dump_addr_range(p_hwfn, p_ptt, dump_buf + offset, 1, BYTES_TO_DWORDS(IGU_REG_ERROR_HANDLING_MEMORY), IGU_FIFO_ELEMENT_DWORDS, 1);
   fifo_has_data = ecore_rd(p_hwfn, p_ptt, IGU_REG_ERROR_HANDLING_DATA_VALID) > 0;
  }

  ecore_dump_num_param(dump_buf + size_param_offset, dump, "size", dwords_read);
 }
 else {




  offset += IGU_FIFO_DEPTH_DWORDS;
 }


 offset += ecore_dump_last_section(dump_buf, offset, dump);

 *num_dumped_dwords = offset;

 return DBG_STATUS_OK;
}
