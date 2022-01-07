
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;
struct ecore_bmap {int name; int max_count; int bitmap; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ,int) ;
 int ECORE_IWARP_MAX_CID_CLEAN_TIME ;
 int ECORE_IWARP_MAX_NO_PROGRESS_CNT ;
 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 int OSAL_BITMAP_WEIGHT (int ,int ) ;
 int OSAL_MSLEEP (int ) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iwarp_wait_cid_map_cleared(struct ecore_hwfn *p_hwfn,
     struct ecore_bmap *bmap)
{
 int prev_weight = 0;
 int wait_count = 0;
 int weight = 0;

 weight = OSAL_BITMAP_WEIGHT(bmap->bitmap, bmap->max_count);
 prev_weight = weight;

 while (weight) {
  OSAL_MSLEEP(ECORE_IWARP_MAX_CID_CLEAN_TIME);

  weight = OSAL_BITMAP_WEIGHT(bmap->bitmap, bmap->max_count);

  if (prev_weight == weight) {
   wait_count++;
  } else {
   prev_weight = weight;
   wait_count = 0;
  }

  if (wait_count > ECORE_IWARP_MAX_NO_PROGRESS_CNT) {
   DP_NOTICE(p_hwfn, 0,
      "%s bitmap wait timed out (%d cids pending)\n",
      bmap->name, weight);
   return ECORE_TIMEOUT;
  }
 }
 return ECORE_SUCCESS;
}
