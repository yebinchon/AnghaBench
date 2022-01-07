
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct socket {int dummy; } ;
typedef TYPE_1__* ng_btsocket_sco_pcb_p ;
struct TYPE_6__ {scalar_t__ state; int flags; int pcb_mtx; } ;


 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ NG_BTSOCKET_SCO_CLOSED ;
 scalar_t__ NG_BTSOCKET_SCO_DISCONNECTING ;
 scalar_t__ NG_BTSOCKET_SCO_OPEN ;
 int NG_BTSOCKET_SCO_TIMO ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_sco_node ;
 int ng_btsocket_sco_send_lp_discon_req (TYPE_1__*) ;
 int ng_btsocket_sco_timeout (TYPE_1__*) ;
 int ng_btsocket_sco_untimeout (TYPE_1__*) ;
 TYPE_1__* so2sco_pcb (struct socket*) ;
 int soisdisconnected (struct socket*) ;
 int soisdisconnecting (struct socket*) ;

int
ng_btsocket_sco_disconnect(struct socket *so)
{
 ng_btsocket_sco_pcb_p pcb = so2sco_pcb(so);

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_sco_node == ((void*)0))
  return (EINVAL);

 mtx_lock(&pcb->pcb_mtx);

 if (pcb->state == NG_BTSOCKET_SCO_DISCONNECTING) {
  mtx_unlock(&pcb->pcb_mtx);

  return (EINPROGRESS);
 }

 if (pcb->flags & NG_BTSOCKET_SCO_TIMO)
  ng_btsocket_sco_untimeout(pcb);

 if (pcb->state == NG_BTSOCKET_SCO_OPEN) {
  ng_btsocket_sco_send_lp_discon_req(pcb);

  pcb->state = NG_BTSOCKET_SCO_DISCONNECTING;
  soisdisconnecting(so);

  ng_btsocket_sco_timeout(pcb);
 } else {
  pcb->state = NG_BTSOCKET_SCO_CLOSED;
  soisdisconnected(so);
 }

 mtx_unlock(&pcb->pcb_mtx);

 return (0);
}
