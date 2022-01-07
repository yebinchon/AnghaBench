
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_spq; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
struct TYPE_2__ {int * async_comp_cb; } ;


 int MAX_PROTOCOL_TYPE ;
 int OSAL_NULL ;

void
ecore_spq_unregister_async_cb(struct ecore_hwfn *p_hwfn,
         enum protocol_type protocol_id)
{
 if (!p_hwfn->p_spq || (protocol_id >= MAX_PROTOCOL_TYPE)) {
  return;
 }

 p_hwfn->p_spq->async_comp_cb[protocol_id] = OSAL_NULL;
}
