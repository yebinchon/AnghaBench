
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct ecore_igu_block {int status; } ;
struct TYPE_4__ {TYPE_1__* p_igu_info; } ;
struct ecore_hwfn {TYPE_2__ hw_info; int p_dev; } ;
struct TYPE_3__ {struct ecore_igu_block* entry; } ;


 int ECORE_IGU_STATUS_FREE ;
 int ECORE_IGU_STATUS_PF ;
 int ECORE_IGU_STATUS_VALID ;
 size_t ECORE_MAPPING_MEMORY_SIZE (int ) ;
 struct ecore_igu_block* OSAL_NULL ;

struct ecore_igu_block *
ecore_get_igu_free_sb(struct ecore_hwfn *p_hwfn, bool b_is_pf)
{
 struct ecore_igu_block *p_block;
 u16 igu_id;

 for (igu_id = 0; igu_id < ECORE_MAPPING_MEMORY_SIZE(p_hwfn->p_dev);
      igu_id++) {
  p_block = &p_hwfn->hw_info.p_igu_info->entry[igu_id];

  if (!(p_block->status & ECORE_IGU_STATUS_VALID) ||
      !(p_block->status & ECORE_IGU_STATUS_FREE))
   continue;

  if (!!(p_block->status & ECORE_IGU_STATUS_PF) ==
      b_is_pf)
   return p_block;
 }

 return OSAL_NULL;
}
