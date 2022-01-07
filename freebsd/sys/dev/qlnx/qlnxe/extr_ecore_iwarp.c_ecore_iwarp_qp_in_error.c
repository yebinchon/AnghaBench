
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ecore_iwarp_ep {int cb_context; int (* event_cb ) (int ,struct ecore_iwarp_cm_event_params*) ;int list_entry; int state; int cm_info; int qp; } ;
struct ecore_iwarp_cm_event_params {int status; int * cm_info; struct ecore_iwarp_ep* ep_context; int event; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int iw_lock; int ep_list; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int ECORE_CONN_RESET ;
 int ECORE_IWARP_EP_CLOSED ;
 int ECORE_IWARP_EVENT_CLOSE ;
 int ECORE_IWARP_QP_STATE_ERROR ;
 int ECORE_SUCCESS ;
 scalar_t__ IWARP_QP_IN_ERROR_GOOD_CLOSE ;
 int OSAL_LIST_REMOVE_ENTRY (int *,int *) ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_iwarp_modify_qp (struct ecore_hwfn*,int ,int ,int) ;
 int stub1 (int ,struct ecore_iwarp_cm_event_params*) ;

__attribute__((used)) static void
ecore_iwarp_qp_in_error(struct ecore_hwfn *p_hwfn,
   struct ecore_iwarp_ep *ep,
   u8 fw_return_code)
{
 struct ecore_iwarp_cm_event_params params;

 ecore_iwarp_modify_qp(p_hwfn, ep->qp, ECORE_IWARP_QP_STATE_ERROR, 1);

 params.event = ECORE_IWARP_EVENT_CLOSE;
 params.ep_context = ep;
 params.cm_info = &ep->cm_info;
 params.status = (fw_return_code == IWARP_QP_IN_ERROR_GOOD_CLOSE) ?
  ECORE_SUCCESS : ECORE_CONN_RESET;

 ep->state = ECORE_IWARP_EP_CLOSED;
 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->iwarp.iw_lock);
 OSAL_LIST_REMOVE_ENTRY(&ep->list_entry,
          &p_hwfn->p_rdma_info->iwarp.ep_list);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->iwarp.iw_lock);

 ep->event_cb(ep->cb_context, &params);
}
