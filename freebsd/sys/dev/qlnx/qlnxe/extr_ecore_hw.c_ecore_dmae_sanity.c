
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef scalar_t__ osal_uintptr_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,char const*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,char const*,unsigned long long,void*,unsigned long long,int *,int) ;
 int ECORE_MSG_SP ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int ECORE_UNKNOWN_ERROR ;
 void* OSAL_DMA_ALLOC_COHERENT (int ,int*,int) ;
 int OSAL_DMA_FREE_COHERENT (int ,void*,int,int) ;
 int OSAL_MEM_ZERO (int *,int) ;
 int OSAL_NULL ;
 int OSAL_PAGE_SIZE ;
 int ecore_dmae_host2host (struct ecore_hwfn*,struct ecore_ptt*,int,int,int,int ) ;

enum _ecore_status_t ecore_dmae_sanity(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           const char *phase)
{
 u32 size = OSAL_PAGE_SIZE / 2, val;
 enum _ecore_status_t rc = ECORE_SUCCESS;
 dma_addr_t p_phys;
 void *p_virt;
 u32 *p_tmp;

 p_virt = OSAL_DMA_ALLOC_COHERENT(p_hwfn->p_dev, &p_phys, 2 * size);
 if (!p_virt) {
  DP_NOTICE(p_hwfn, 0,
     "DMAE sanity [%s]: failed to allocate memory\n",
     phase);
  return ECORE_NOMEM;
 }


 for (p_tmp = (u32 *)p_virt;
      p_tmp < (u32 *)((u8 *)p_virt + size);
      p_tmp++) {

  val = (u32)(osal_uintptr_t)p_tmp;
  *p_tmp = val;
 }


 OSAL_MEM_ZERO((u8 *)p_virt + size, size);

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "DMAE sanity [%s]: src_addr={phys 0x%llx, virt %p}, dst_addr={phys 0x%llx, virt %p}, size 0x%x\n",
     phase, (unsigned long long)p_phys, p_virt,
     (unsigned long long)(p_phys + size), (u8 *)p_virt + size,
     size);

 rc = ecore_dmae_host2host(p_hwfn, p_ptt, p_phys, p_phys + size,
      size / 4 ,
      OSAL_NULL );
 if (rc != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, 0,
     "DMAE sanity [%s]: ecore_dmae_host2host() failed. rc = %d.\n",
     phase, rc);
  goto out;
 }


 for (p_tmp = (u32 *)((u8 *)p_virt + size);
      p_tmp < (u32 *)((u8 *)p_virt + (2 * size));
      p_tmp++) {

  val = (u32)(osal_uintptr_t)p_tmp - size;

  if (*p_tmp != val) {
   DP_NOTICE(p_hwfn, 0,
      "DMAE sanity [%s]: addr={phys 0x%llx, virt %p}, read_val 0x%08x, expected_val 0x%08x\n",
      phase,
      (unsigned long long)(p_phys + (u32)((u8 *)p_tmp - (u8 *)p_virt)),
      p_tmp, *p_tmp, val);
   rc = ECORE_UNKNOWN_ERROR;
   goto out;
  }
 }

out:
 OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev, p_virt, p_phys, 2 * size);
 return rc;
}
