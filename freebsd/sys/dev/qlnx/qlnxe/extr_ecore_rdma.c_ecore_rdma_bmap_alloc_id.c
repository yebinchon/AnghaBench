
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_hwfn {int dummy; } ;
struct ecore_bmap {scalar_t__ max_count; int name; int bitmap; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,scalar_t__) ;
 int ECORE_INVAL ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 scalar_t__ OSAL_FIND_FIRST_ZERO_BIT (int ,scalar_t__) ;
 int OSAL_SET_BIT (scalar_t__,int ) ;

enum _ecore_status_t ecore_rdma_bmap_alloc_id(struct ecore_hwfn *p_hwfn,
           struct ecore_bmap *bmap,
           u32 *id_num)
{
 *id_num = OSAL_FIND_FIRST_ZERO_BIT(bmap->bitmap, bmap->max_count);
 if (*id_num >= bmap->max_count)
  return ECORE_INVAL;

 OSAL_SET_BIT(*id_num, bmap->bitmap);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "%s bitmap: allocated id %d\n",
     bmap->name, *id_num);

 return ECORE_SUCCESS;
}
