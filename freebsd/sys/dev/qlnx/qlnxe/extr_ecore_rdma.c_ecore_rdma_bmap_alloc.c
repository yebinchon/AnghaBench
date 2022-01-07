
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int p_dev; } ;
struct ecore_bmap {int max_count; int name; int bitmap; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DIV_ROUND_UP (int,int) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_MSG_RDMA ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 int OSAL_NULL ;
 int OSAL_SNPRINTF (int ,int ,char*,char*) ;
 int OSAL_ZALLOC (int ,int ,int) ;
 int QEDR_MAX_BMAP_NAME ;

enum _ecore_status_t ecore_rdma_bmap_alloc(struct ecore_hwfn *p_hwfn,
        struct ecore_bmap *bmap,
        u32 max_count,
        char *name)
{
 u32 size_in_bytes;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "max_count = %08x\n", max_count);

 bmap->max_count = max_count;

 if (!max_count) {
  bmap->bitmap = OSAL_NULL;
  return ECORE_SUCCESS;
 }

 size_in_bytes = sizeof(unsigned long) *
  DIV_ROUND_UP(max_count, (sizeof(unsigned long) * 8));

 bmap->bitmap = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, size_in_bytes);
 if (!bmap->bitmap)
 {
  DP_NOTICE(p_hwfn, 0,
     "ecore bmap alloc failed: cannot allocate memory (bitmap). rc = %d\n",
     ECORE_NOMEM);
  return ECORE_NOMEM;
 }

 OSAL_SNPRINTF(bmap->name, QEDR_MAX_BMAP_NAME, "%s", name);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "ECORE_SUCCESS\n");
 return ECORE_SUCCESS;
}
