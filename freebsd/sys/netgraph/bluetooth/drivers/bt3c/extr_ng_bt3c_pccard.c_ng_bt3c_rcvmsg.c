
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef int node_p ;
typedef int ng_bt3c_node_state_ep ;
typedef int ng_bt3c_node_stat_ep ;
struct TYPE_7__ {int queue; int qlen; } ;
typedef TYPE_2__ ng_bt3c_node_qlen_ep ;
typedef int ng_bt3c_node_debug_ep ;
typedef int ng_bt3c_firmware_block_ep ;
typedef int item_p ;
typedef int hook_p ;
typedef TYPE_3__* bt3c_softc_p ;
struct TYPE_9__ {int ifq_maxlen; } ;
struct TYPE_8__ {int flags; int debug; int state; int stat; TYPE_5__ outq; TYPE_5__ inq; int * hook; } ;


 int EHOSTDOWN ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 char* NG_BT3C_HOOK ;
 int NG_BT3C_STAT_RESET (int ) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 int NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int NG_TEXTRESPONSE ;
 int _IF_QLEN (TYPE_5__*) ;
 int bcopy (int *,scalar_t__,int) ;
 int bt3c_download_firmware (TYPE_3__*,scalar_t__,int) ;
 int snprintf (scalar_t__,int,char*,char*,int,int,int,int,int,int,int) ;

__attribute__((used)) static int
ng_bt3c_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 bt3c_softc_p sc = (bt3c_softc_p) NG_NODE_PRIVATE(node);
 struct ng_mesg *msg = ((void*)0), *rsp = ((void*)0);
 int error = 0;

 if (sc == ((void*)0)) {
  NG_FREE_ITEM(item);
  return (EHOSTDOWN);
 }

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {
 case 129:
  switch (msg->header.cmd) {
  case 128:
   NG_MKRESPONSE(rsp, msg, NG_TEXTRESPONSE, M_NOWAIT);
   if (rsp == ((void*)0))
    error = ENOMEM;
   else
    snprintf(rsp->data, NG_TEXTRESPONSE,
     "Hook: %s\n" "Flags: %#x\n" "Debug: %d\n" "State: %d\n" "IncmQ: [len:%d,max:%d]\n" "OutgQ: [len:%d,max:%d]\n",





     (sc->hook != ((void*)0))? NG_BT3C_HOOK : "",
     sc->flags,
     sc->debug,
     sc->state,
     _IF_QLEN(&sc->inq),
     sc->inq.ifq_maxlen,
     _IF_QLEN(&sc->outq),
     sc->outq.ifq_maxlen
     );
   break;

  default:
   error = EINVAL;
   break;
  }
  break;

 case 140:
  switch (msg->header.cmd) {
  case 135:
   NG_MKRESPONSE(rsp, msg, sizeof(ng_bt3c_node_state_ep),
    M_NOWAIT);
   if (rsp == ((void*)0))
    error = ENOMEM;
   else
    *((ng_bt3c_node_state_ep *)(rsp->data)) =
     sc->state;
   break;

  case 131:
   if (msg->header.arglen != sizeof(ng_bt3c_node_debug_ep))
    error = EMSGSIZE;
   else
    sc->debug =
     *((ng_bt3c_node_debug_ep *)(msg->data));
   break;

  case 138:
   NG_MKRESPONSE(rsp, msg, sizeof(ng_bt3c_node_debug_ep),
    M_NOWAIT);
   if (rsp == ((void*)0))
    error = ENOMEM;
   else
    *((ng_bt3c_node_debug_ep *)(rsp->data)) =
     sc->debug;
   break;

  case 137:
   NG_MKRESPONSE(rsp, msg, sizeof(ng_bt3c_node_qlen_ep),
    M_NOWAIT);
   if (rsp == ((void*)0)) {
    error = ENOMEM;
    break;
   }

   switch (((ng_bt3c_node_qlen_ep *)(msg->data))->queue) {
   case 134:
    ((ng_bt3c_node_qlen_ep *)(rsp->data))->queue =
     134;
    ((ng_bt3c_node_qlen_ep *)(rsp->data))->qlen =
     sc->inq.ifq_maxlen;
    break;

   case 133:
    ((ng_bt3c_node_qlen_ep *)(rsp->data))->queue =
     133;
    ((ng_bt3c_node_qlen_ep *)(rsp->data))->qlen =
     sc->outq.ifq_maxlen;
    break;

   default:
    NG_FREE_MSG(rsp);
    error = EINVAL;
    break;
   }
   break;

  case 130:
   if (msg->header.arglen != sizeof(ng_bt3c_node_qlen_ep)){
    error = EMSGSIZE;
    break;
   }

   if (((ng_bt3c_node_qlen_ep *)(msg->data))->qlen <= 0) {
    error = EINVAL;
    break;
   }

   switch (((ng_bt3c_node_qlen_ep *)(msg->data))->queue) {
   case 134:
    sc->inq.ifq_maxlen = ((ng_bt3c_node_qlen_ep *)
     (msg->data))->qlen;
    break;

   case 133:
    sc->outq.ifq_maxlen = ((ng_bt3c_node_qlen_ep *)
     (msg->data))->qlen;
    break;

   default:
    error = EINVAL;
    break;
   }
   break;

  case 136:
   NG_MKRESPONSE(rsp, msg, sizeof(ng_bt3c_node_stat_ep),
    M_NOWAIT);
   if (rsp == ((void*)0))
    error = ENOMEM;
   else
    bcopy(&sc->stat, rsp->data,
     sizeof(ng_bt3c_node_stat_ep));
   break;

  case 132:
   NG_BT3C_STAT_RESET(sc->stat);
   break;

  case 139:
   if (msg->header.arglen <
     sizeof(ng_bt3c_firmware_block_ep))
    error = EMSGSIZE;
   else
    bt3c_download_firmware(sc, msg->data,
       msg->header.arglen);
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

 NG_RESPOND_MSG(error, node, item, rsp);
 NG_FREE_MSG(msg);

 return (error);
}
