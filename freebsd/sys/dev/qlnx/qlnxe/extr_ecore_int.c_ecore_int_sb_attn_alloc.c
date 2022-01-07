
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_sb_attn_info {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_sb_attn_info* p_sb_attn; struct ecore_dev* p_dev; } ;
struct ecore_dev {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;


 int DP_NOTICE (struct ecore_dev*,int,char*) ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 struct ecore_sb_attn_info* OSAL_ALLOC (struct ecore_dev*,int ,int) ;
 void* OSAL_DMA_ALLOC_COHERENT (struct ecore_dev*,int *,int ) ;
 int OSAL_FREE (struct ecore_dev*,struct ecore_sb_attn_info*) ;
 int SB_ATTN_ALIGNED_SIZE (struct ecore_hwfn*) ;
 int ecore_int_sb_attn_init (struct ecore_hwfn*,struct ecore_ptt*,void*,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_int_sb_attn_alloc(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 struct ecore_sb_attn_info *p_sb;
 dma_addr_t p_phys = 0;
 void *p_virt;


 p_sb = OSAL_ALLOC(p_dev, GFP_KERNEL, sizeof(*p_sb));
 if (!p_sb) {
  DP_NOTICE(p_dev, 0, "Failed to allocate `struct ecore_sb_attn_info'\n");
  return ECORE_NOMEM;
 }


 p_virt = OSAL_DMA_ALLOC_COHERENT(p_dev, &p_phys,
      SB_ATTN_ALIGNED_SIZE(p_hwfn));
 if (!p_virt) {
  DP_NOTICE(p_dev, 0, "Failed to allocate status block (attentions)\n");
  OSAL_FREE(p_dev, p_sb);
  return ECORE_NOMEM;
 }


 p_hwfn->p_sb_attn = p_sb;
 ecore_int_sb_attn_init(p_hwfn, p_ptt, p_virt, p_phys);

 return ECORE_SUCCESS;
}
