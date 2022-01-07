
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_sb_attn_info {int sb_phys; scalar_t__ sb_attn; } ;
struct ecore_hwfn {struct ecore_sb_attn_info* p_sb_attn; int p_dev; } ;


 int OSAL_DMA_FREE_COHERENT (int ,scalar_t__,int ,int ) ;
 int OSAL_FREE (int ,struct ecore_sb_attn_info*) ;
 struct ecore_sb_attn_info* OSAL_NULL ;
 int SB_ATTN_ALIGNED_SIZE (struct ecore_hwfn*) ;

__attribute__((used)) static void ecore_int_sb_attn_free(struct ecore_hwfn *p_hwfn)
{
 struct ecore_sb_attn_info *p_sb = p_hwfn->p_sb_attn;

 if (!p_sb)
  return;

 if (p_sb->sb_attn) {
  OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev, p_sb->sb_attn,
           p_sb->sb_phys,
           SB_ATTN_ALIGNED_SIZE(p_hwfn));
 }

 OSAL_FREE(p_hwfn->p_dev, p_sb);
 p_hwfn->p_sb_attn = OSAL_NULL;
}
