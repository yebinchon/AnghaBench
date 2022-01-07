
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct idle_chk_data {int buf_size_set; int buf_size; } ;
struct ecore_ptt {int dummy; } ;
struct dbg_tools_data {struct idle_chk_data idle_chk; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_2__ {int ptr; } ;


 size_t BIN_BUF_DBG_IDLE_CHK_IMMS ;
 size_t BIN_BUF_DBG_IDLE_CHK_REGS ;
 size_t BIN_BUF_DBG_IDLE_CHK_RULES ;
 size_t BIN_BUF_DBG_MODE_TREE ;
 int DBG_STATUS_DBG_ARRAY_NOT_SET ;
 int DBG_STATUS_OK ;
 int OSAL_NULL ;
 int ecore_dbg_dev_init (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_idle_chk_dump (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;
 TYPE_1__* s_dbg_arrays ;

enum dbg_status ecore_dbg_idle_chk_get_dump_buf_size(struct ecore_hwfn *p_hwfn,
              struct ecore_ptt *p_ptt,
              u32 *buf_size)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 struct idle_chk_data *idle_chk = &dev_data->idle_chk;
 enum dbg_status status;

 *buf_size = 0;

 status = ecore_dbg_dev_init(p_hwfn, p_ptt);
 if (status != DBG_STATUS_OK)
  return status;

 if (!s_dbg_arrays[BIN_BUF_DBG_MODE_TREE].ptr || !s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_REGS].ptr ||
  !s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_IMMS].ptr || !s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_RULES].ptr)
  return DBG_STATUS_DBG_ARRAY_NOT_SET;

 if (!idle_chk->buf_size_set) {
  idle_chk->buf_size = ecore_idle_chk_dump(p_hwfn, p_ptt, OSAL_NULL, 0);
  idle_chk->buf_size_set = 1;
 }

 *buf_size = idle_chk->buf_size;

 return DBG_STATUS_OK;
}
