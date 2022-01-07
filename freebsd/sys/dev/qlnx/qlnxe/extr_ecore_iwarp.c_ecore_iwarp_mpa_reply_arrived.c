
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ird; int ord; } ;
struct ecore_iwarp_ep {scalar_t__ connect_mode; int mpa_reply_processed; int cb_context; int (* event_cb ) (int ,struct ecore_iwarp_cm_event_params*) ;TYPE_1__ cm_info; int mpa_rev; } ;
struct ecore_iwarp_cm_event_params {int status; struct ecore_iwarp_ep* ep_context; TYPE_1__* cm_info; int event; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ) ;
 int ECORE_IWARP_EVENT_ACTIVE_MPA_REPLY ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 scalar_t__ TCP_CONNECT_PASSIVE ;
 int ecore_iwarp_parse_private_data (struct ecore_hwfn*,struct ecore_iwarp_ep*) ;
 int stub1 (int ,struct ecore_iwarp_cm_event_params*) ;

__attribute__((used)) static void
ecore_iwarp_mpa_reply_arrived(struct ecore_hwfn *p_hwfn,
         struct ecore_iwarp_ep *ep)
{
 struct ecore_iwarp_cm_event_params params;

 if (ep->connect_mode == TCP_CONNECT_PASSIVE) {
  DP_NOTICE(p_hwfn, 1, "MPA reply event not expected on passive side!\n");
  return;
 }

 params.event = ECORE_IWARP_EVENT_ACTIVE_MPA_REPLY;

 ecore_iwarp_parse_private_data(p_hwfn, ep);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
     "MPA_NEGOTIATE (v%d): ORD: 0x%x IRD: 0x%x\n",
     ep->mpa_rev, ep->cm_info.ord, ep->cm_info.ird);

 params.cm_info = &ep->cm_info;
 params.ep_context = ep;
 params.status = ECORE_SUCCESS;

 ep->mpa_reply_processed = 1;

 ep->event_cb(ep->cb_context, &params);
}
