
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ecore_iwarp_ep {scalar_t__ connect_mode; int list_entry; int cb_context; int (* event_cb ) (int ,struct ecore_iwarp_cm_event_params*) ;int tcp_cid; int state; int cm_info; } ;
struct ecore_iwarp_cm_event_params {void* status; int * cm_info; struct ecore_iwarp_ep* ep_context; int event; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef int params ;
struct TYPE_3__ {int iw_lock; int ep_list; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int DP_ERR (struct ecore_hwfn*,char*,int ,int ,int) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ,int ) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ) ;
 void* ECORE_CONN_REFUSED ;
 void* ECORE_CONN_RESET ;
 int ECORE_IWARP_CONNECT_MODE_STRING (struct ecore_iwarp_ep*) ;
 int ECORE_IWARP_EP_CLOSED ;
 int ECORE_IWARP_EVENT_ACTIVE_COMPLETE ;
 int ECORE_IWARP_INVALID_TCP_CID ;
 int ECORE_MSG_RDMA ;
 void* ECORE_TIMEOUT ;





 int OSAL_LIST_REMOVE_ENTRY (int *,int *) ;
 int OSAL_MEM_ZERO (struct ecore_iwarp_cm_event_params*,int) ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 scalar_t__ TCP_CONNECT_PASSIVE ;
 int ecore_iwarp_return_ep (struct ecore_hwfn*,struct ecore_iwarp_ep*) ;
 int stub1 (int ,struct ecore_iwarp_cm_event_params*) ;

__attribute__((used)) static void
ecore_iwarp_tcp_connect_unsuccessful(struct ecore_hwfn *p_hwfn,
         struct ecore_iwarp_ep *ep,
         u8 fw_return_code)
{
 struct ecore_iwarp_cm_event_params params;

 OSAL_MEM_ZERO(&params, sizeof(params));
 params.event = ECORE_IWARP_EVENT_ACTIVE_COMPLETE;
 params.ep_context = ep;
 params.cm_info = &ep->cm_info;
 ep->state = ECORE_IWARP_EP_CLOSED;

 switch (fw_return_code) {
 case 129:
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "%s(0x%x) TCP connect got invalid packet\n",
      ECORE_IWARP_CONNECT_MODE_STRING(ep),
      ep->tcp_cid);
  params.status = ECORE_CONN_RESET;
  break;
 case 130:
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "%s(0x%x) TCP Connection Reset\n",
      ECORE_IWARP_CONNECT_MODE_STRING(ep),
      ep->tcp_cid);
  params.status = ECORE_CONN_RESET;
  break;
 case 128:
  DP_NOTICE(p_hwfn, 0, "%s(0x%x) TCP timeout\n",
     ECORE_IWARP_CONNECT_MODE_STRING(ep),
     ep->tcp_cid);
  params.status = ECORE_TIMEOUT;
  break;
 case 131:
  DP_NOTICE(p_hwfn, 0, "%s(0x%x) MPA not supported VER\n",
     ECORE_IWARP_CONNECT_MODE_STRING(ep),
     ep->tcp_cid);
  params.status = ECORE_CONN_REFUSED;
  break;
 case 132:
  DP_NOTICE(p_hwfn, 0, "%s(0x%x) MPA Invalid Packet\n",
     ECORE_IWARP_CONNECT_MODE_STRING(ep), ep->tcp_cid);
  params.status = ECORE_CONN_RESET;
  break;
 default:
  DP_ERR(p_hwfn, "%s(0x%x) Unexpected return code tcp connect: %d\n",
         ECORE_IWARP_CONNECT_MODE_STRING(ep), ep->tcp_cid,
         fw_return_code);
  params.status = ECORE_CONN_RESET;
  break;
 }

 if (ep->connect_mode == TCP_CONNECT_PASSIVE) {
  ep->tcp_cid = ECORE_IWARP_INVALID_TCP_CID;
  ecore_iwarp_return_ep(p_hwfn, ep);
 } else {
  ep->event_cb(ep->cb_context, &params);
  OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->iwarp.iw_lock);
  OSAL_LIST_REMOVE_ENTRY(&ep->list_entry,
           &p_hwfn->p_rdma_info->iwarp.ep_list);
  OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->iwarp.iw_lock);
 }
}
