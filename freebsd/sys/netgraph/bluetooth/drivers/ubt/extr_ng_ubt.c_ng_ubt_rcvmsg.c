
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ng_bt_mbufq {int len; int maxlen; } ;
struct ubt_softc {int sc_task_flags; int sc_debug; int sc_stat; struct ng_bt_mbufq sc_scoq; struct ng_bt_mbufq sc_aclq; struct ng_bt_mbufq sc_cmdq; int * sc_hook; } ;
struct TYPE_3__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef int node_p ;
typedef int ng_ubt_node_stat_ep ;
struct TYPE_4__ {int queue; int qlen; } ;
typedef TYPE_2__ ng_ubt_node_qlen_ep ;
typedef int ng_ubt_node_debug_ep ;
typedef int item_p ;
typedef int hook_p ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 struct ubt_softc* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int NG_TEXTRESPONSE ;
 char* NG_UBT_HOOK ;
 int UBT_STAT_RESET (struct ubt_softc*) ;
 int bcopy (int *,scalar_t__,int) ;
 int snprintf (scalar_t__,int,char*,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static int
ng_ubt_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct ubt_softc *sc = NG_NODE_PRIVATE(node);
 struct ng_mesg *msg, *rsp = ((void*)0);
 struct ng_bt_mbufq *q;
 int error = 0, queue, qlen;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {
 case 139:
  switch (msg->header.cmd) {
  case 138:
   NG_MKRESPONSE(rsp, msg, NG_TEXTRESPONSE, M_NOWAIT);
   if (rsp == ((void*)0)) {
    error = ENOMEM;
    break;
   }

   snprintf(rsp->data, NG_TEXTRESPONSE,
    "Hook: %s\n" "Task flags: %#x\n" "Debug: %d\n" "CMD queue: [have:%d,max:%d]\n" "ACL queue: [have:%d,max:%d]\n" "SCO queue: [have:%d,max:%d]",





    (sc->sc_hook != ((void*)0)) ? NG_UBT_HOOK : "",
    sc->sc_task_flags,
    sc->sc_debug,
    sc->sc_cmdq.len,
    sc->sc_cmdq.maxlen,
    sc->sc_aclq.len,
    sc->sc_aclq.maxlen,
    sc->sc_scoq.len,
    sc->sc_scoq.maxlen);
   break;

  default:
   error = EINVAL;
   break;
  }
  break;

 case 137:
  switch (msg->header.cmd) {
  case 129:
   if (msg->header.arglen != sizeof(ng_ubt_node_debug_ep)){
    error = EMSGSIZE;
    break;
   }

   sc->sc_debug = *((ng_ubt_node_debug_ep *) (msg->data));
   break;

  case 136:
   NG_MKRESPONSE(rsp, msg, sizeof(ng_ubt_node_debug_ep),
       M_NOWAIT);
   if (rsp == ((void*)0)) {
    error = ENOMEM;
    break;
   }

   *((ng_ubt_node_debug_ep *) (rsp->data)) = sc->sc_debug;
   break;

  case 128:
   if (msg->header.arglen != sizeof(ng_ubt_node_qlen_ep)) {
    error = EMSGSIZE;
    break;
   }

   queue = ((ng_ubt_node_qlen_ep *) (msg->data))->queue;
   qlen = ((ng_ubt_node_qlen_ep *) (msg->data))->qlen;

   switch (queue) {
   case 132:
    q = &sc->sc_cmdq;
    break;

   case 133:
    q = &sc->sc_aclq;
    break;

   case 131:
    q = &sc->sc_scoq;
    break;

   default:
    error = EINVAL;
    goto done;

   }

   q->maxlen = qlen;
   break;

  case 135:
   if (msg->header.arglen != sizeof(ng_ubt_node_qlen_ep)) {
    error = EMSGSIZE;
    break;
   }

   queue = ((ng_ubt_node_qlen_ep *) (msg->data))->queue;

   switch (queue) {
   case 132:
    q = &sc->sc_cmdq;
    break;

   case 133:
    q = &sc->sc_aclq;
    break;

   case 131:
    q = &sc->sc_scoq;
    break;

   default:
    error = EINVAL;
    goto done;

   }

   NG_MKRESPONSE(rsp, msg, sizeof(ng_ubt_node_qlen_ep),
    M_NOWAIT);
   if (rsp == ((void*)0)) {
    error = ENOMEM;
    break;
   }

   ((ng_ubt_node_qlen_ep *) (rsp->data))->queue = queue;
   ((ng_ubt_node_qlen_ep *) (rsp->data))->qlen = q->maxlen;
   break;

  case 134:
   NG_MKRESPONSE(rsp, msg, sizeof(ng_ubt_node_stat_ep),
       M_NOWAIT);
   if (rsp == ((void*)0)) {
    error = ENOMEM;
    break;
   }

   bcopy(&sc->sc_stat, rsp->data,
    sizeof(ng_ubt_node_stat_ep));
   break;

  case 130:
   UBT_STAT_RESET(sc);
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
done:
 NG_RESPOND_MSG(error, node, item, rsp);
 NG_FREE_MSG(msg);

 return (error);
}
