
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct socket {int * so_pcb; } ;
typedef TYPE_1__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_8__ {int flags; scalar_t__ state; int pcb_mtx; } ;


 int KASSERT (int ,char*) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int M_NETGRAPH_BTSOCKET_L2CAP ;
 scalar_t__ NG_BTSOCKET_L2CAP_CLOSED ;
 scalar_t__ NG_BTSOCKET_L2CAP_DISCONNECTING ;
 int NG_BTSOCKET_L2CAP_TIMO ;
 int bzero (TYPE_1__*,int) ;
 int free (TYPE_1__*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int * ng_btsocket_l2cap_node ;
 int ng_btsocket_l2cap_send_l2ca_discon_req (int ,TYPE_1__*) ;
 int ng_btsocket_l2cap_sockets_mtx ;
 int ng_btsocket_l2cap_untimeout (TYPE_1__*) ;
 TYPE_1__* so2l2cap_pcb (struct socket*) ;
 int soisdisconnected (struct socket*) ;

void
ng_btsocket_l2cap_detach(struct socket *so)
{
 ng_btsocket_l2cap_pcb_p pcb = so2l2cap_pcb(so);

 KASSERT(pcb != ((void*)0), ("ng_btsocket_l2cap_detach: pcb == NULL"));

 if (ng_btsocket_l2cap_node == ((void*)0))
  return;

 mtx_lock(&ng_btsocket_l2cap_sockets_mtx);
 mtx_lock(&pcb->pcb_mtx);


 if (pcb->flags & NG_BTSOCKET_L2CAP_TIMO)
  ng_btsocket_l2cap_untimeout(pcb);

 if (pcb->state != NG_BTSOCKET_L2CAP_CLOSED &&
     pcb->state != NG_BTSOCKET_L2CAP_DISCONNECTING)

  ng_btsocket_l2cap_send_l2ca_discon_req(0, pcb);

 pcb->state = NG_BTSOCKET_L2CAP_CLOSED;

 LIST_REMOVE(pcb, next);

 mtx_unlock(&pcb->pcb_mtx);
 mtx_unlock(&ng_btsocket_l2cap_sockets_mtx);

 mtx_destroy(&pcb->pcb_mtx);
 bzero(pcb, sizeof(*pcb));
 free(pcb, M_NETGRAPH_BTSOCKET_L2CAP);

 soisdisconnected(so);
 so->so_pcb = ((void*)0);
}
