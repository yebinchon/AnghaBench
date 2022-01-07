
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_iwarp_ep {int cb_context; int (* event_cb ) (int ,struct ecore_iwarp_cm_event_params*) ;int cm_info; int cid; } ;
struct ecore_iwarp_cm_event_params {int * cm_info; struct ecore_iwarp_ep* ep_context; void* event; int status; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_CONN_RESET ;
 void* ECORE_IWARP_EVENT_CQ_OVERFLOW ;
 void* ECORE_IWARP_EVENT_DISCONNECT ;
 void* ECORE_IWARP_EVENT_IRQ_FULL ;
 void* ECORE_IWARP_EVENT_LLP_TIMEOUT ;
 void* ECORE_IWARP_EVENT_LOCAL_ACCESS_ERROR ;
 void* ECORE_IWARP_EVENT_QP_CATASTROPHIC ;
 void* ECORE_IWARP_EVENT_REMOTE_OPERATION_ERROR ;
 void* ECORE_IWARP_EVENT_REMOTE_PROTECTION_ERROR ;
 void* ECORE_IWARP_EVENT_RQ_EMPTY ;
 void* ECORE_IWARP_EVENT_TERMINATE_RECEIVED ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int stub1 (int ,struct ecore_iwarp_cm_event_params*) ;

__attribute__((used)) static void
ecore_iwarp_exception_received(struct ecore_hwfn *p_hwfn,
          struct ecore_iwarp_ep *ep,
          int fw_ret_code)
{
 struct ecore_iwarp_cm_event_params params;
 bool event_cb = 0;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "EP(0x%x) fw_ret_code=%d\n",
     ep->cid, fw_ret_code);

 switch (fw_ret_code) {
 case 136:
  params.status = ECORE_SUCCESS;
  params.event = ECORE_IWARP_EVENT_DISCONNECT;
  event_cb = 1;
  break;
 case 135:
  params.status = ECORE_CONN_RESET;
  params.event = ECORE_IWARP_EVENT_DISCONNECT;
  event_cb = 1;
  break;
 case 129:
  params.event = ECORE_IWARP_EVENT_RQ_EMPTY;
  event_cb = 1;
  break;
 case 137:
  params.event = ECORE_IWARP_EVENT_IRQ_FULL;
  event_cb = 1;
  break;
 case 134:
  params.event = ECORE_IWARP_EVENT_LLP_TIMEOUT;
  event_cb = 1;
  break;
 case 130:
  params.event = ECORE_IWARP_EVENT_REMOTE_PROTECTION_ERROR;
  event_cb = 1;
  break;
 case 138:
  params.event = ECORE_IWARP_EVENT_CQ_OVERFLOW;
  event_cb = 1;
  break;
 case 132:
  params.event = ECORE_IWARP_EVENT_QP_CATASTROPHIC;
  event_cb = 1;
  break;
 case 133:
  params.event = ECORE_IWARP_EVENT_LOCAL_ACCESS_ERROR;
  event_cb = 1;
  break;
 case 131:
  params.event = ECORE_IWARP_EVENT_REMOTE_OPERATION_ERROR;
  event_cb = 1;
  break;
 case 128:
  params.event = ECORE_IWARP_EVENT_TERMINATE_RECEIVED;
  event_cb = 1;
  break;
 default:
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Unhandled exception received...\n");
  break;
 }

 if (event_cb) {
  params.ep_context = ep;
  params.cm_info = &ep->cm_info;
  ep->event_cb(ep->cb_context, &params);
 }
}
