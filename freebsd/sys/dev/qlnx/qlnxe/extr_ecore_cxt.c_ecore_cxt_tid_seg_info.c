
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ecore_tid_seg {scalar_t__ count; } ;
struct ecore_hwfn {struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {TYPE_1__* conn_cfg; } ;
struct TYPE_2__ {struct ecore_tid_seg* tid_seg; } ;


 size_t MAX_CONN_TYPES ;
 struct ecore_tid_seg* OSAL_NULL ;

__attribute__((used)) static struct ecore_tid_seg *ecore_cxt_tid_seg_info(struct ecore_hwfn *p_hwfn,
          u32 seg)
{
 struct ecore_cxt_mngr *p_cfg = p_hwfn->p_cxt_mngr;
 u32 i;




 for (i = 0; i < MAX_CONN_TYPES; i++) {
  if (p_cfg->conn_cfg[i].tid_seg[seg].count)
   return &p_cfg->conn_cfg[i].tid_seg[seg];
 }
 return OSAL_NULL;
}
