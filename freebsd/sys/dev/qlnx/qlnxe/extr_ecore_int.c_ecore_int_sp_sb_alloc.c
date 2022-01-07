
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_sb_sp_info {int pi_info_arr; int sb_info; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_sb_sp_info* p_sp_sb; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_NOMEM ;
 int ECORE_SP_SB_ID ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 struct ecore_sb_sp_info* OSAL_ALLOC (int ,int ,int) ;
 void* OSAL_DMA_ALLOC_COHERENT (int ,int *,int ) ;
 int OSAL_FREE (int ,struct ecore_sb_sp_info*) ;
 int OSAL_MEMSET (int ,int ,int) ;
 int SB_ALIGNED_SIZE (struct ecore_hwfn*) ;
 int ecore_int_sb_init (struct ecore_hwfn*,struct ecore_ptt*,int *,void*,int ,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_int_sp_sb_alloc(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *p_ptt)
{
 struct ecore_sb_sp_info *p_sb;
 dma_addr_t p_phys = 0;
 void *p_virt;


 p_sb = OSAL_ALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_sb));
 if (!p_sb) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate `struct ecore_sb_info'\n");
  return ECORE_NOMEM;
 }


 p_virt = OSAL_DMA_ALLOC_COHERENT(p_hwfn->p_dev,
      &p_phys,
      SB_ALIGNED_SIZE(p_hwfn));
 if (!p_virt) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate status block\n");
  OSAL_FREE(p_hwfn->p_dev, p_sb);
  return ECORE_NOMEM;
 }



 p_hwfn->p_sp_sb = p_sb;
 ecore_int_sb_init(p_hwfn, p_ptt, &p_sb->sb_info,
     p_virt, p_phys, ECORE_SP_SB_ID);

 OSAL_MEMSET(p_sb->pi_info_arr, 0, sizeof(p_sb->pi_info_arr));

 return ECORE_SUCCESS;
}
