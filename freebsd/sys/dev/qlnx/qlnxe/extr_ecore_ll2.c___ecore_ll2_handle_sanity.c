
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ecore_ll2_info {int mutex; scalar_t__ b_active; } ;
struct ecore_hwfn {struct ecore_ll2_info* p_ll2_info; } ;


 size_t ECORE_MAX_NUM_OF_LL2_CONNECTIONS ;
 int OSAL_MUTEX_ACQUIRE (int *) ;
 int OSAL_MUTEX_RELEASE (int *) ;
 struct ecore_ll2_info* OSAL_NULL ;

__attribute__((used)) static struct ecore_ll2_info *
__ecore_ll2_handle_sanity(struct ecore_hwfn *p_hwfn,
     u8 connection_handle,
     bool b_lock, bool b_only_active)
{
 struct ecore_ll2_info *p_ll2_conn, *p_ret = OSAL_NULL;

 if (connection_handle >= ECORE_MAX_NUM_OF_LL2_CONNECTIONS)
  return OSAL_NULL;

 if (!p_hwfn->p_ll2_info)
  return OSAL_NULL;




 p_ll2_conn = &p_hwfn->p_ll2_info[connection_handle];

 if (b_only_active) {
  if (b_lock)
   OSAL_MUTEX_ACQUIRE(&p_ll2_conn->mutex);
  if (p_ll2_conn->b_active)
   p_ret = p_ll2_conn;
  if (b_lock)
   OSAL_MUTEX_RELEASE(&p_ll2_conn->mutex);
 } else {
  p_ret = p_ll2_conn;
 }

 return p_ret;
}
