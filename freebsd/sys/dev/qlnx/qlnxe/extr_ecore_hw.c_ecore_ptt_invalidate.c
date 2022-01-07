
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int offset; } ;
struct ecore_ptt {TYPE_2__ pxp; } ;
struct ecore_hwfn {TYPE_1__* p_ptt_pool; } ;
struct TYPE_3__ {struct ecore_ptt* ptts; } ;


 int ECORE_BAR_INVALID_OFFSET ;
 int PXP_EXTERNAL_BAR_PF_WINDOW_NUM ;

void ecore_ptt_invalidate(struct ecore_hwfn *p_hwfn)
{
 struct ecore_ptt *p_ptt;
 int i;

 for (i = 0; i < PXP_EXTERNAL_BAR_PF_WINDOW_NUM; i++) {
  p_ptt = &p_hwfn->p_ptt_pool->ptts[i];
  p_ptt->pxp.offset = ECORE_BAR_INVALID_OFFSET;
 }
}
