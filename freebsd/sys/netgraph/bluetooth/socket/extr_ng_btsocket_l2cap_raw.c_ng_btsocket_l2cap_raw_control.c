
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct TYPE_18__ {scalar_t__ token; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct ng_btsocket_l2cap_raw_ping {int echo_size; TYPE_5__* echo_data; int result; } ;
struct ng_btsocket_l2cap_raw_node_flags {int flags; } ;
struct ng_btsocket_l2cap_raw_node_debug {int debug; } ;
struct ng_btsocket_l2cap_raw_get_info {int info_size; TYPE_5__* info_data; int result; int info_type; } ;
struct ng_btsocket_l2cap_raw_con_list {int num_connections; int * connections; } ;
struct ng_btsocket_l2cap_raw_chan_list {int num_channels; int * channels; } ;
struct ng_btsocket_l2cap_raw_auto_discon_timo {int timeout; } ;
struct ifnet {int dummy; } ;
struct TYPE_20__ {int num_connections; } ;
typedef TYPE_3__ ng_l2cap_node_con_list_ep ;
typedef int ng_l2cap_node_con_ep ;
struct TYPE_21__ {int num_channels; } ;
typedef TYPE_4__ ng_l2cap_node_chan_list_ep ;
typedef int ng_l2cap_node_chan_ep ;
struct TYPE_22__ {int info_size; int result; int echo_size; } ;
typedef TYPE_5__ ng_l2cap_l2ca_ping_op ;
struct TYPE_23__ {int echo_size; int bdaddr; } ;
typedef TYPE_6__ ng_l2cap_l2ca_ping_ip ;
typedef TYPE_5__ ng_l2cap_l2ca_get_info_op ;
struct TYPE_24__ {int info_type; int bdaddr; } ;
typedef TYPE_8__ ng_l2cap_l2ca_get_info_ip ;
typedef TYPE_9__* ng_btsocket_l2cap_raw_pcb_p ;
typedef TYPE_5__* caddr_t ;
struct TYPE_25__ {scalar_t__ token; int flags; int pcb_mtx; TYPE_2__* rt; struct ng_mesg* msg; int dst; } ;
struct TYPE_19__ {int hook; } ;


 int EBUSY ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int M_NOWAIT ;
 int NGM_L2CAP_COOKIE ;
 int NGM_L2CAP_L2CA_GET_INFO ;
 int NGM_L2CAP_L2CA_PING ;
 int NGM_L2CAP_NODE_GET_AUTO_DISCON_TIMO ;
 int NGM_L2CAP_NODE_GET_CHAN_LIST ;
 int NGM_L2CAP_NODE_GET_CON_LIST ;
 int NGM_L2CAP_NODE_GET_DEBUG ;
 int NGM_L2CAP_NODE_GET_FLAGS ;
 int NGM_L2CAP_NODE_SET_AUTO_DISCON_TIMO ;
 int NGM_L2CAP_NODE_SET_DEBUG ;
 int NG_BTSOCKET_L2CAP_RAW_PRIVILEGED ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_L2CAP_MAX_CHAN_NUM ;
 int NG_L2CAP_MAX_CON_NUM ;
 int NG_L2CAP_MAX_ECHO_SIZE ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int ,int ) ;
 int NG_SEND_MSG_HOOK (int,int *,struct ng_mesg*,int ,int ) ;
 int PCATCH ;
 int PZERO ;
 int bcopy (int *,int *,int) ;
 int bluetooth_l2cap_rtx_timeout () ;
 int copyin (TYPE_5__*,TYPE_6__*,int) ;
 int copyout (TYPE_5__*,TYPE_5__*,int) ;
 int hz ;
 void* min (int,int ) ;
 int msleep (struct ng_mesg**,int *,int,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_btsocket_l2cap_raw_get_token (scalar_t__*) ;
 int ng_btsocket_l2cap_raw_ioctl_timeout ;
 int * ng_btsocket_l2cap_raw_node ;
 int ng_btsocket_l2cap_raw_send_ngmsg (int ,int ,int *,int) ;
 int ng_btsocket_l2cap_raw_send_sync_ngmsg (TYPE_9__*,int ,int *,int) ;
 TYPE_9__* so2l2cap_raw_pcb (struct socket*) ;

int
ng_btsocket_l2cap_raw_control(struct socket *so, u_long cmd, caddr_t data,
  struct ifnet *ifp, struct thread *td)
{
 ng_btsocket_l2cap_raw_pcb_p pcb = so2l2cap_raw_pcb(so);
 struct ng_mesg *msg = ((void*)0);
 int error = 0;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_l2cap_raw_node == ((void*)0))
  return (EINVAL);

 mtx_lock(&pcb->pcb_mtx);


 if (pcb->rt == ((void*)0)) {
  mtx_unlock(&pcb->pcb_mtx);
  return (EHOSTUNREACH);
 }


 if (pcb->token != 0) {
  mtx_unlock(&pcb->pcb_mtx);
  return (EBUSY);
 }

 switch (cmd) {
 case 130: {
  struct ng_btsocket_l2cap_raw_node_flags *p =
   (struct ng_btsocket_l2cap_raw_node_flags *) data;

  error = ng_btsocket_l2cap_raw_send_sync_ngmsg(pcb,
    NGM_L2CAP_NODE_GET_FLAGS,
    &p->flags, sizeof(p->flags));
  } break;

 case 131: {
  struct ng_btsocket_l2cap_raw_node_debug *p =
   (struct ng_btsocket_l2cap_raw_node_debug *) data;

  error = ng_btsocket_l2cap_raw_send_sync_ngmsg(pcb,
    NGM_L2CAP_NODE_GET_DEBUG,
    &p->debug, sizeof(p->debug));
  } break;

 case 128: {
  struct ng_btsocket_l2cap_raw_node_debug *p =
   (struct ng_btsocket_l2cap_raw_node_debug *) data;

  if (pcb->flags & NG_BTSOCKET_L2CAP_RAW_PRIVILEGED)
   error = ng_btsocket_l2cap_raw_send_ngmsg(pcb->rt->hook,
     NGM_L2CAP_NODE_SET_DEBUG,
     &p->debug, sizeof(p->debug));
  else
   error = EPERM;
  } break;

 case 132: {
  struct ng_btsocket_l2cap_raw_con_list *p =
   (struct ng_btsocket_l2cap_raw_con_list *) data;
  ng_l2cap_node_con_list_ep *p1 = ((void*)0);
                ng_l2cap_node_con_ep *p2 = ((void*)0);

  if (p->num_connections == 0 ||
      p->num_connections > NG_L2CAP_MAX_CON_NUM ||
      p->connections == ((void*)0)) {
   mtx_unlock(&pcb->pcb_mtx);
   return (EINVAL);
  }

  NG_MKMESSAGE(msg, NGM_L2CAP_COOKIE, NGM_L2CAP_NODE_GET_CON_LIST,
   0, M_NOWAIT);
  if (msg == ((void*)0)) {
   mtx_unlock(&pcb->pcb_mtx);
   return (ENOMEM);
  }
  ng_btsocket_l2cap_raw_get_token(&msg->header.token);
  pcb->token = msg->header.token;
  pcb->msg = ((void*)0);

  NG_SEND_MSG_HOOK(error, ng_btsocket_l2cap_raw_node, msg,
   pcb->rt->hook, 0);
  if (error != 0) {
   pcb->token = 0;
   mtx_unlock(&pcb->pcb_mtx);
   return (error);
  }

  error = msleep(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
    ng_btsocket_l2cap_raw_ioctl_timeout * hz);
  pcb->token = 0;

  if (error != 0) {
   mtx_unlock(&pcb->pcb_mtx);
   return (error);
  }

  msg = pcb->msg;
  pcb->msg = ((void*)0);

  mtx_unlock(&pcb->pcb_mtx);

  if (msg != ((void*)0) &&
      msg->header.cmd == NGM_L2CAP_NODE_GET_CON_LIST) {

   p1 = (ng_l2cap_node_con_list_ep *)(msg->data);
   p2 = (ng_l2cap_node_con_ep *)(p1 + 1);

   p->num_connections = min(p->num_connections,
      p1->num_connections);
   if (p->num_connections > 0)
    error = copyout((caddr_t) p2,
     (caddr_t) p->connections,
     p->num_connections * sizeof(*p2));
  } else
   error = EINVAL;

  NG_FREE_MSG(msg);
  return (error);
  }

 case 133: {
  struct ng_btsocket_l2cap_raw_chan_list *p =
   (struct ng_btsocket_l2cap_raw_chan_list *) data;
  ng_l2cap_node_chan_list_ep *p1 = ((void*)0);
                ng_l2cap_node_chan_ep *p2 = ((void*)0);

  if (p->num_channels == 0 ||
      p->num_channels > NG_L2CAP_MAX_CHAN_NUM ||
      p->channels == ((void*)0)) {
   mtx_unlock(&pcb->pcb_mtx);
   return (EINVAL);
  }

  NG_MKMESSAGE(msg, NGM_L2CAP_COOKIE,
   NGM_L2CAP_NODE_GET_CHAN_LIST, 0, M_NOWAIT);
  if (msg == ((void*)0)) {
   mtx_unlock(&pcb->pcb_mtx);
   return (ENOMEM);
  }
  ng_btsocket_l2cap_raw_get_token(&msg->header.token);
  pcb->token = msg->header.token;
  pcb->msg = ((void*)0);

  NG_SEND_MSG_HOOK(error, ng_btsocket_l2cap_raw_node, msg,
   pcb->rt->hook, 0);
  if (error != 0) {
   pcb->token = 0;
   mtx_unlock(&pcb->pcb_mtx);
   return (error);
  }

  error = msleep(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
    ng_btsocket_l2cap_raw_ioctl_timeout * hz);
  pcb->token = 0;

  if (error != 0) {
   mtx_unlock(&pcb->pcb_mtx);
   return (error);
  }

  msg = pcb->msg;
  pcb->msg = ((void*)0);

  mtx_unlock(&pcb->pcb_mtx);

  if (msg != ((void*)0) &&
      msg->header.cmd == NGM_L2CAP_NODE_GET_CHAN_LIST) {

   p1 = (ng_l2cap_node_chan_list_ep *)(msg->data);
   p2 = (ng_l2cap_node_chan_ep *)(p1 + 1);

   p->num_channels = min(p->num_channels,
      p1->num_channels);
   if (p->num_channels > 0)
    error = copyout((caddr_t) p2,
      (caddr_t) p->channels,
      p->num_channels * sizeof(*p2));
  } else
   error = EINVAL;

  NG_FREE_MSG(msg);
  return (error);
  }

 case 135: {
  struct ng_btsocket_l2cap_raw_ping *p =
   (struct ng_btsocket_l2cap_raw_ping *) data;
  ng_l2cap_l2ca_ping_ip *ip = ((void*)0);
  ng_l2cap_l2ca_ping_op *op = ((void*)0);

  if ((p->echo_size != 0 && p->echo_data == ((void*)0)) ||
       p->echo_size > NG_L2CAP_MAX_ECHO_SIZE) {
   mtx_unlock(&pcb->pcb_mtx);
   return (EINVAL);
  }

  NG_MKMESSAGE(msg, NGM_L2CAP_COOKIE,
   NGM_L2CAP_L2CA_PING, sizeof(*ip) + p->echo_size,
   M_NOWAIT);
  if (msg == ((void*)0)) {
   mtx_unlock(&pcb->pcb_mtx);
   return (ENOMEM);
  }
  ng_btsocket_l2cap_raw_get_token(&msg->header.token);
  pcb->token = msg->header.token;
  pcb->msg = ((void*)0);

  ip = (ng_l2cap_l2ca_ping_ip *)(msg->data);
  bcopy(&pcb->dst, &ip->bdaddr, sizeof(ip->bdaddr));
  ip->echo_size = p->echo_size;

  if (ip->echo_size > 0) {
   mtx_unlock(&pcb->pcb_mtx);
   error = copyin(p->echo_data, ip + 1, p->echo_size);
   mtx_lock(&pcb->pcb_mtx);

   if (error != 0) {
    NG_FREE_MSG(msg);
    pcb->token = 0;
    mtx_unlock(&pcb->pcb_mtx);
    return (error);
   }
  }

  NG_SEND_MSG_HOOK(error, ng_btsocket_l2cap_raw_node, msg,
   pcb->rt->hook, 0);
  if (error != 0) {
   pcb->token = 0;
   mtx_unlock(&pcb->pcb_mtx);
   return (error);
  }

  error = msleep(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
    bluetooth_l2cap_rtx_timeout());
  pcb->token = 0;

  if (error != 0) {
   mtx_unlock(&pcb->pcb_mtx);
   return (error);
  }

  msg = pcb->msg;
  pcb->msg = ((void*)0);

  mtx_unlock(&pcb->pcb_mtx);

  if (msg != ((void*)0) &&
      msg->header.cmd == NGM_L2CAP_L2CA_PING) {

   op = (ng_l2cap_l2ca_ping_op *)(msg->data);
   p->result = op->result;
   p->echo_size = min(p->echo_size, op->echo_size);

   if (p->echo_size > 0)
    error = copyout(op + 1, p->echo_data,
      p->echo_size);
  } else
   error = EINVAL;

  NG_FREE_MSG(msg);
  return (error);
  }

 case 136: {
  struct ng_btsocket_l2cap_raw_get_info *p =
   (struct ng_btsocket_l2cap_raw_get_info *) data;
  ng_l2cap_l2ca_get_info_ip *ip = ((void*)0);
  ng_l2cap_l2ca_get_info_op *op = ((void*)0);

  if (!(pcb->flags & NG_BTSOCKET_L2CAP_RAW_PRIVILEGED)) {
   mtx_unlock(&pcb->pcb_mtx);
   return (EPERM);
  }

  if (p->info_size != 0 && p->info_data == ((void*)0)) {
   mtx_unlock(&pcb->pcb_mtx);
   return (EINVAL);
  }

  NG_MKMESSAGE(msg, NGM_L2CAP_COOKIE,
   NGM_L2CAP_L2CA_GET_INFO, sizeof(*ip) + p->info_size,
   M_NOWAIT);
  if (msg == ((void*)0)) {
   mtx_unlock(&pcb->pcb_mtx);
   return (ENOMEM);
  }
  ng_btsocket_l2cap_raw_get_token(&msg->header.token);
  pcb->token = msg->header.token;
  pcb->msg = ((void*)0);

  ip = (ng_l2cap_l2ca_get_info_ip *)(msg->data);
  bcopy(&pcb->dst, &ip->bdaddr, sizeof(ip->bdaddr));
  ip->info_type = p->info_type;

  NG_SEND_MSG_HOOK(error, ng_btsocket_l2cap_raw_node, msg,
   pcb->rt->hook, 0);
  if (error != 0) {
   pcb->token = 0;
   mtx_unlock(&pcb->pcb_mtx);
   return (error);
  }

  error = msleep(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
    bluetooth_l2cap_rtx_timeout());
  pcb->token = 0;

  if (error != 0) {
   mtx_unlock(&pcb->pcb_mtx);
   return (error);
  }

  msg = pcb->msg;
  pcb->msg = ((void*)0);

  mtx_unlock(&pcb->pcb_mtx);

  if (msg != ((void*)0) &&
      msg->header.cmd == NGM_L2CAP_L2CA_GET_INFO) {

   op = (ng_l2cap_l2ca_get_info_op *)(msg->data);
   p->result = op->result;
   p->info_size = min(p->info_size, op->info_size);

   if (p->info_size > 0)
    error = copyout(op + 1, p->info_data,
      p->info_size);
  } else
   error = EINVAL;

  NG_FREE_MSG(msg);
  return (error);
  }

 case 134: {
  struct ng_btsocket_l2cap_raw_auto_discon_timo *p =
   (struct ng_btsocket_l2cap_raw_auto_discon_timo *) data;

  error = ng_btsocket_l2cap_raw_send_sync_ngmsg(pcb,
    NGM_L2CAP_NODE_GET_AUTO_DISCON_TIMO,
    &p->timeout, sizeof(p->timeout));
  } break;

 case 129: {
  struct ng_btsocket_l2cap_raw_auto_discon_timo *p =
   (struct ng_btsocket_l2cap_raw_auto_discon_timo *) data;

  if (pcb->flags & NG_BTSOCKET_L2CAP_RAW_PRIVILEGED)
   error = ng_btsocket_l2cap_raw_send_ngmsg(pcb->rt->hook,
     NGM_L2CAP_NODE_SET_AUTO_DISCON_TIMO,
     &p->timeout, sizeof(p->timeout));
  else
   error = EPERM;
  } break;

 default:
  error = EINVAL;
  break;
 }

 mtx_unlock(&pcb->pcb_mtx);

 return (error);
}
