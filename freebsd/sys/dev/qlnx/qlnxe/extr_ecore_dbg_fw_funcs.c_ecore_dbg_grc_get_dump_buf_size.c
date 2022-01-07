
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_2__ {int ptr; } ;


 size_t BIN_BUF_DBG_ATTN_BLOCKS ;
 size_t BIN_BUF_DBG_ATTN_REGS ;
 size_t BIN_BUF_DBG_DUMP_MEM ;
 size_t BIN_BUF_DBG_DUMP_REG ;
 size_t BIN_BUF_DBG_MODE_TREE ;
 int DBG_STATUS_DBG_ARRAY_NOT_SET ;
 int DBG_STATUS_OK ;
 int OSAL_NULL ;
 int ecore_dbg_dev_init (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_grc_dump (struct ecore_hwfn*,struct ecore_ptt*,int ,int,scalar_t__*) ;
 TYPE_1__* s_dbg_arrays ;

enum dbg_status ecore_dbg_grc_get_dump_buf_size(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt,
            u32 *buf_size)
{
 enum dbg_status status = ecore_dbg_dev_init(p_hwfn, p_ptt);

 *buf_size = 0;

 if (status != DBG_STATUS_OK)
  return status;

 if (!s_dbg_arrays[BIN_BUF_DBG_MODE_TREE].ptr || !s_dbg_arrays[BIN_BUF_DBG_DUMP_REG].ptr || !s_dbg_arrays[BIN_BUF_DBG_DUMP_MEM].ptr ||
  !s_dbg_arrays[BIN_BUF_DBG_ATTN_BLOCKS].ptr || !s_dbg_arrays[BIN_BUF_DBG_ATTN_REGS].ptr)
  return DBG_STATUS_DBG_ARRAY_NOT_SET;

 return ecore_grc_dump(p_hwfn, p_ptt, OSAL_NULL, 0, buf_size);
}
