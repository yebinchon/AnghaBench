
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct ecore_bmap {int max_count; int bitmap; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {struct ecore_bmap cid_map; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_SUCCESS ;
 scalar_t__ OSAL_BITMAP_WEIGHT (int ,int ) ;
 int OSAL_MSLEEP (int) ;
 int PROTOCOLID_ROCE ;
 int ecore_spq_unregister_async_cb (struct ecore_hwfn*,int ) ;

enum _ecore_status_t ecore_roce_stop(struct ecore_hwfn *p_hwfn)
{
 struct ecore_bmap *cid_map = &p_hwfn->p_rdma_info->cid_map;
 int wait_count = 0;







 while (OSAL_BITMAP_WEIGHT(cid_map->bitmap, cid_map->max_count)) {
  OSAL_MSLEEP(100);
  if (wait_count++ > 20) {
   DP_NOTICE(p_hwfn, 0,
      "cid bitmap wait timed out\n");
   break;
  }
 }

 ecore_spq_unregister_async_cb(p_hwfn, PROTOCOLID_ROCE);

 return ECORE_SUCCESS;
}
