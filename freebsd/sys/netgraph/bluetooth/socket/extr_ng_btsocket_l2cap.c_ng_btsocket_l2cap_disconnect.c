
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct socket {int dummy; } ;
typedef TYPE_1__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_6__ {scalar_t__ state; int flags; int pcb_mtx; int token; } ;


 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ NG_BTSOCKET_L2CAP_CLOSED ;
 scalar_t__ NG_BTSOCKET_L2CAP_DISCONNECTING ;
 int NG_BTSOCKET_L2CAP_TIMO ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_l2cap_node ;
 int ng_btsocket_l2cap_send_l2ca_discon_req (int ,TYPE_1__*) ;
 int ng_btsocket_l2cap_timeout (TYPE_1__*) ;
 int ng_btsocket_l2cap_untimeout (TYPE_1__*) ;
 TYPE_1__* so2l2cap_pcb (struct socket*) ;
 int soisdisconnecting (struct socket*) ;

int
ng_btsocket_l2cap_disconnect(struct socket *so)
{
 ng_btsocket_l2cap_pcb_p pcb = so2l2cap_pcb(so);
 int error = 0;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_l2cap_node == ((void*)0))
  return (EINVAL);

 mtx_lock(&pcb->pcb_mtx);

 if (pcb->state == NG_BTSOCKET_L2CAP_DISCONNECTING) {
  mtx_unlock(&pcb->pcb_mtx);
  return (EINPROGRESS);
 }

 if (pcb->state != NG_BTSOCKET_L2CAP_CLOSED) {

  if (pcb->flags & NG_BTSOCKET_L2CAP_TIMO)
   ng_btsocket_l2cap_untimeout(pcb);

  error = ng_btsocket_l2cap_send_l2ca_discon_req(pcb->token, pcb);
  if (error == 0) {
   pcb->state = NG_BTSOCKET_L2CAP_DISCONNECTING;
   soisdisconnecting(so);

   ng_btsocket_l2cap_timeout(pcb);
  }


 }

 mtx_unlock(&pcb->pcb_mtx);

 return (error);
}
