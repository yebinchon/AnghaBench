
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ecore_ooo_info {int ready_buffers_list; } ;
struct ecore_ooo_buffer {int list_entry; } ;


 int OSAL_LIST_PUSH_HEAD (int *,int *) ;
 int OSAL_LIST_PUSH_TAIL (int *,int *) ;

void ecore_ooo_put_ready_buffer(struct ecore_ooo_info *p_ooo_info,
    struct ecore_ooo_buffer *p_buffer, u8 on_tail)
{
 if (on_tail) {
  OSAL_LIST_PUSH_TAIL(&p_buffer->list_entry,
       &p_ooo_info->ready_buffers_list);
 } else {
  OSAL_LIST_PUSH_HEAD(&p_buffer->list_entry,
       &p_ooo_info->ready_buffers_list);
 }
}
