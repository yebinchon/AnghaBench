
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ecore_ooo_isle {int list_entry; int buffers_list; } ;
struct ecore_ooo_info {int free_isles_list; int cur_isles_number; int free_buffers_list; } ;
struct ecore_ooo_archipelago {int isles_list; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__,int ) ;
 scalar_t__ OSAL_LIST_IS_EMPTY (int *) ;
 int OSAL_LIST_PUSH_HEAD (int *,int *) ;
 int OSAL_LIST_REMOVE_ENTRY (int *,int *) ;
 int OSAL_LIST_SPLICE_TAIL_INIT (int *,int *) ;
 void* OSAL_NULL ;
 struct ecore_ooo_archipelago* ecore_ooo_seek_archipelago (struct ecore_ooo_info*,int ) ;
 struct ecore_ooo_isle* ecore_ooo_seek_isle (struct ecore_hwfn*,struct ecore_ooo_info*,int ,scalar_t__) ;

void ecore_ooo_delete_isles(struct ecore_hwfn *p_hwfn,
      struct ecore_ooo_info *p_ooo_info,
      u32 cid,
      u8 drop_isle,
      u8 drop_size)
{
 struct ecore_ooo_archipelago *p_archipelago = OSAL_NULL;
 struct ecore_ooo_isle *p_isle = OSAL_NULL;
 u8 isle_idx;

 p_archipelago = ecore_ooo_seek_archipelago(p_ooo_info, cid);
 for (isle_idx = 0; isle_idx < drop_size; isle_idx++) {
  p_isle = ecore_ooo_seek_isle(p_hwfn, p_ooo_info,
         cid, drop_isle);
  if (!p_isle) {
   DP_NOTICE(p_hwfn, 1,
     "Isle %d is not found(cid %d)\n",
     drop_isle, cid);
   return;
  }
  if (OSAL_LIST_IS_EMPTY(&p_isle->buffers_list)) {
   DP_NOTICE(p_hwfn, 1,
     "Isle %d is empty(cid %d)\n",
     drop_isle, cid);
  } else {
   OSAL_LIST_SPLICE_TAIL_INIT(&p_isle->buffers_list,
     &p_ooo_info->free_buffers_list);
  }



  OSAL_LIST_REMOVE_ENTRY(&p_isle->list_entry,
          &p_archipelago->isles_list);
  p_ooo_info->cur_isles_number--;
  OSAL_LIST_PUSH_HEAD(&p_isle->list_entry,
       &p_ooo_info->free_isles_list);
 }
}
