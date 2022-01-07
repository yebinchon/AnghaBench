
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_spq; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int ecore_spq_async_comp_cb ;
struct TYPE_2__ {int * async_comp_cb; } ;


 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int MAX_PROTOCOL_TYPE ;

enum _ecore_status_t
ecore_spq_register_async_cb(struct ecore_hwfn *p_hwfn,
       enum protocol_type protocol_id,
       ecore_spq_async_comp_cb cb)
{
 if (!p_hwfn->p_spq || (protocol_id >= MAX_PROTOCOL_TYPE)) {
  return ECORE_INVAL;
 }

 p_hwfn->p_spq->async_comp_cb[protocol_id] = cb;
 return ECORE_SUCCESS;
}
