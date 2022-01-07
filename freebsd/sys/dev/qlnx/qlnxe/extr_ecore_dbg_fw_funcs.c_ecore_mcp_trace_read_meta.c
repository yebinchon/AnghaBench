
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef int signature ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_INVALID_TRACE_SIGNATURE ;
 int DBG_STATUS_OK ;
 scalar_t__ NVM_MAGIC_VALUE ;
 int ecore_nvram_read (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ ecore_read_unaligned_dword (scalar_t__*) ;

__attribute__((used)) static enum dbg_status ecore_mcp_trace_read_meta(struct ecore_hwfn *p_hwfn,
             struct ecore_ptt *p_ptt,
             u32 nvram_offset_in_bytes,
             u32 size_in_bytes,
             u32 *buf)
{
 u8 modules_num, module_len, i, *byte_buf = (u8 *)buf;
 enum dbg_status status;
 u32 signature;


 status = ecore_nvram_read(p_hwfn, p_ptt, nvram_offset_in_bytes, size_in_bytes, buf);
 if (status != DBG_STATUS_OK)
  return status;


 signature = ecore_read_unaligned_dword(byte_buf);
 byte_buf += sizeof(signature);
 if (signature != NVM_MAGIC_VALUE)
  return DBG_STATUS_INVALID_TRACE_SIGNATURE;


 modules_num = *(byte_buf++);


 for (i = 0; i < modules_num; i++) {
  module_len = *(byte_buf++);
  byte_buf += module_len;
 }


 signature = ecore_read_unaligned_dword(byte_buf);
 byte_buf += sizeof(signature);
 if (signature != NVM_MAGIC_VALUE)
  return DBG_STATUS_INVALID_TRACE_SIGNATURE;

 return DBG_STATUS_OK;
}
