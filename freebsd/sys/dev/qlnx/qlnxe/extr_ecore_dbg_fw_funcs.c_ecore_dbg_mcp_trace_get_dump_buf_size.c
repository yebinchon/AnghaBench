
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_OK ;
 int OSAL_NULL ;
 int ecore_dbg_dev_init (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_trace_dump (struct ecore_hwfn*,struct ecore_ptt*,int ,int,scalar_t__*) ;

enum dbg_status ecore_dbg_mcp_trace_get_dump_buf_size(struct ecore_hwfn *p_hwfn,
               struct ecore_ptt *p_ptt,
               u32 *buf_size)
{
 enum dbg_status status = ecore_dbg_dev_init(p_hwfn, p_ptt);

 *buf_size = 0;

 if (status != DBG_STATUS_OK)
  return status;

 return ecore_mcp_trace_dump(p_hwfn, p_ptt, OSAL_NULL, 0, buf_size);
}
