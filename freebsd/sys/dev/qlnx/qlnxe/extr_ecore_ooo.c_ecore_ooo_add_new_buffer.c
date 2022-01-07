
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ecore_ooo_isle {int buffers_list; } ;
struct ecore_ooo_info {int dummy; } ;
struct ecore_ooo_buffer {int list_entry; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__,int ) ;
 scalar_t__ ECORE_OOO_LEFT_BUF ;
 int OSAL_LIST_PUSH_HEAD (int *,int *) ;
 int OSAL_LIST_PUSH_TAIL (int *,int *) ;
 struct ecore_ooo_isle* OSAL_NULL ;
 struct ecore_ooo_isle* ecore_ooo_seek_isle (struct ecore_hwfn*,struct ecore_ooo_info*,int ,scalar_t__) ;

void ecore_ooo_add_new_buffer(struct ecore_hwfn *p_hwfn,
        struct ecore_ooo_info *p_ooo_info,
        u32 cid,
        u8 ooo_isle,
        struct ecore_ooo_buffer *p_buffer,
               u8 buffer_side)
{
 struct ecore_ooo_isle * p_isle = OSAL_NULL;
 p_isle = ecore_ooo_seek_isle(p_hwfn, p_ooo_info, cid, ooo_isle);
 if (!p_isle) {
  DP_NOTICE(p_hwfn, 1,
    "Isle %d is not found(cid %d)\n",
    ooo_isle, cid);
  return;
 }
 if (buffer_side == ECORE_OOO_LEFT_BUF) {
  OSAL_LIST_PUSH_HEAD(&p_buffer->list_entry,
       &p_isle->buffers_list);
 } else {
  OSAL_LIST_PUSH_TAIL(&p_buffer->list_entry,
       &p_isle->buffers_list);
 }
}
