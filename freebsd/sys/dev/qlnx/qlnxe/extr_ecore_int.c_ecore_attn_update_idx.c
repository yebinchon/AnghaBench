
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ecore_sb_attn_info {scalar_t__ index; TYPE_1__* sb_attn; } ;
struct ecore_hwfn {int p_dev; } ;
struct TYPE_2__ {int sb_index; } ;


 scalar_t__ ECORE_SB_ATT_IDX ;
 scalar_t__ OSAL_LE16_TO_CPU (int ) ;
 int OSAL_MMIOWB (int ) ;

__attribute__((used)) static u16 ecore_attn_update_idx(struct ecore_hwfn *p_hwfn,
     struct ecore_sb_attn_info *p_sb_desc)
{
 u16 rc = 0, index;

 OSAL_MMIOWB(p_hwfn->p_dev);

 index = OSAL_LE16_TO_CPU(p_sb_desc->sb_attn->sb_index);
 if (p_sb_desc->index != index) {
  p_sb_desc->index = index;
  rc = ECORE_SB_ATT_IDX;
 }

 OSAL_MMIOWB(p_hwfn->p_dev);

 return rc;
}
