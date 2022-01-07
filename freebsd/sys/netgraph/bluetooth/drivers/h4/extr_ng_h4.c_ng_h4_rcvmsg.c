
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef int node_p ;
typedef int ng_h4_node_state_ep ;
typedef int ng_h4_node_stat_ep ;
typedef int ng_h4_node_qlen_ep ;
typedef int ng_h4_node_debug_ep ;
typedef TYPE_2__* ng_h4_info_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_10__ {int ifq_maxlen; } ;
struct TYPE_9__ {int debug; int state; int got; int want; int stat; TYPE_3__ outq; int * hook; } ;


 int EHOSTDOWN ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int IFQ_SET_MAXLEN (TYPE_3__*,int) ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 char* NG_H4_HOOK ;
 int NG_H4_LOCK (TYPE_2__*) ;
 int NG_H4_STAT_RESET (int ) ;
 int NG_H4_UNLOCK (TYPE_2__*) ;
 int NG_H4_W4_PKT_IND ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 int NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int NG_TEXTRESPONSE ;
 int _IF_DRAIN (TYPE_3__*) ;
 int _IF_QLEN (TYPE_3__*) ;
 int bcopy (int *,scalar_t__,int) ;
 int snprintf (scalar_t__,int,char*,char*,int,int,int,int,int,int) ;

__attribute__((used)) static int
ng_h4_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 ng_h4_info_p sc = (ng_h4_info_p) NG_NODE_PRIVATE(node);
 struct ng_mesg *msg = ((void*)0), *resp = ((void*)0);
 int error = 0;

 if (sc == ((void*)0))
  return (EHOSTDOWN);

 NGI_GET_MSG(item, msg);
 NG_H4_LOCK(sc);

 switch (msg->header.typecookie) {
 case 138:
  switch (msg->header.cmd) {
  case 128:
   NG_MKRESPONSE(resp, msg, NG_TEXTRESPONSE, M_NOWAIT);
   if (resp == ((void*)0))
    error = ENOMEM;
   else
    snprintf(resp->data, NG_TEXTRESPONSE,
     "Hook: %s\n" "Debug: %d\n" "State: %d\n" "Queue: [have:%d,max:%d]\n" "Input: [got:%d,want:%d]",




     (sc->hook != ((void*)0))? NG_H4_HOOK : "",
     sc->debug,
     sc->state,
     _IF_QLEN(&sc->outq),
     sc->outq.ifq_maxlen,
     sc->got,
     sc->want);
   break;

  default:
   error = EINVAL;
   break;
  }
  break;

 case 137:
  switch (msg->header.cmd) {
  case 132:
   _IF_DRAIN(&sc->outq);
   sc->state = NG_H4_W4_PKT_IND;
   sc->want = 1;
   sc->got = 0;
   break;

  case 133:
   NG_MKRESPONSE(resp, msg, sizeof(ng_h4_node_state_ep),
    M_NOWAIT);
   if (resp == ((void*)0))
    error = ENOMEM;
   else
    *((ng_h4_node_state_ep *)(resp->data)) =
     sc->state;
   break;

  case 136:
   NG_MKRESPONSE(resp, msg, sizeof(ng_h4_node_debug_ep),
    M_NOWAIT);
   if (resp == ((void*)0))
    error = ENOMEM;
   else
    *((ng_h4_node_debug_ep *)(resp->data)) =
     sc->debug;
   break;

  case 130:
   if (msg->header.arglen != sizeof(ng_h4_node_debug_ep))
    error = EMSGSIZE;
   else
    sc->debug =
     *((ng_h4_node_debug_ep *)(msg->data));
   break;

  case 135:
   NG_MKRESPONSE(resp, msg, sizeof(ng_h4_node_qlen_ep),
    M_NOWAIT);
   if (resp == ((void*)0))
    error = ENOMEM;
   else
    *((ng_h4_node_qlen_ep *)(resp->data)) =
     sc->outq.ifq_maxlen;
   break;

  case 129:
   if (msg->header.arglen != sizeof(ng_h4_node_qlen_ep))
    error = EMSGSIZE;
   else if (*((ng_h4_node_qlen_ep *)(msg->data)) <= 0)
    error = EINVAL;
   else
    IFQ_SET_MAXLEN(&sc->outq,
     *((ng_h4_node_qlen_ep *)(msg->data)));
   break;

  case 134:
   NG_MKRESPONSE(resp, msg, sizeof(ng_h4_node_stat_ep),
    M_NOWAIT);
   if (resp == ((void*)0))
    error = ENOMEM;
   else
    bcopy(&sc->stat, resp->data,
     sizeof(ng_h4_node_stat_ep));
   break;

  case 131:
   NG_H4_STAT_RESET(sc->stat);
   break;

  default:
   error = EINVAL;
   break;
  }
  break;

 default:
  error = EINVAL;
  break;
 }

 NG_H4_UNLOCK(sc);

 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);

 return (error);
}
