
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_INVAL ;
 int ECORE_MAX_PFC_PRIORITIES ;
 int ECORE_SUCCESS ;

__attribute__((used)) static enum _ecore_status_t
ecore_dcbx_get_app_priority(u8 pri_bitmap, u8 *priority)
{
 u32 pri_mask, pri = ECORE_MAX_PFC_PRIORITIES;
 u32 index = ECORE_MAX_PFC_PRIORITIES - 1;
 enum _ecore_status_t rc = ECORE_SUCCESS;


 if (pri_bitmap == 1) {
  *priority = 0;
  return rc;
 }


 while ((ECORE_MAX_PFC_PRIORITIES == pri) && index) {
  pri_mask = 1 << index;
  if (pri_bitmap & pri_mask)
   pri = index;
  index--;
 }

 if (pri < ECORE_MAX_PFC_PRIORITIES)
  *priority = (u8)pri;
 else
  rc = ECORE_INVAL;

 return rc;
}
