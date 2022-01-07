
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct socket {int * so_pcb; } ;
typedef TYPE_1__* ng_btsocket_sco_pcb_p ;
struct TYPE_8__ {int flags; scalar_t__ state; int pcb_mtx; } ;


 int KASSERT (int ,char*) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int M_NETGRAPH_BTSOCKET_SCO ;
 scalar_t__ NG_BTSOCKET_SCO_CLOSED ;
 scalar_t__ NG_BTSOCKET_SCO_OPEN ;
 int NG_BTSOCKET_SCO_TIMO ;
 int bzero (TYPE_1__*,int) ;
 int free (TYPE_1__*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int * ng_btsocket_sco_node ;
 int ng_btsocket_sco_send_lp_discon_req (TYPE_1__*) ;
 int ng_btsocket_sco_sockets_mtx ;
 int ng_btsocket_sco_untimeout (TYPE_1__*) ;
 TYPE_1__* so2sco_pcb (struct socket*) ;
 int soisdisconnected (struct socket*) ;

void
ng_btsocket_sco_detach(struct socket *so)
{
 ng_btsocket_sco_pcb_p pcb = so2sco_pcb(so);

 KASSERT(pcb != ((void*)0), ("ng_btsocket_sco_detach: pcb == NULL"));

 if (ng_btsocket_sco_node == ((void*)0))
  return;

 mtx_lock(&ng_btsocket_sco_sockets_mtx);
 mtx_lock(&pcb->pcb_mtx);

 if (pcb->flags & NG_BTSOCKET_SCO_TIMO)
  ng_btsocket_sco_untimeout(pcb);

 if (pcb->state == NG_BTSOCKET_SCO_OPEN)
  ng_btsocket_sco_send_lp_discon_req(pcb);

 pcb->state = NG_BTSOCKET_SCO_CLOSED;

 LIST_REMOVE(pcb, next);

 mtx_unlock(&pcb->pcb_mtx);
 mtx_unlock(&ng_btsocket_sco_sockets_mtx);

 mtx_destroy(&pcb->pcb_mtx);
 bzero(pcb, sizeof(*pcb));
 free(pcb, M_NETGRAPH_BTSOCKET_SCO);

 soisdisconnected(so);
 so->so_pcb = ((void*)0);
}
