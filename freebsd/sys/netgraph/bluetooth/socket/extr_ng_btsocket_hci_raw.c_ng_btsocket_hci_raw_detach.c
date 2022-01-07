
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct socket {int * so_pcb; } ;
typedef TYPE_1__* ng_btsocket_hci_raw_pcb_p ;
struct TYPE_6__ {int pcb_mtx; } ;


 int KASSERT (int ,char*) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int M_NETGRAPH_BTSOCKET_HCI_RAW ;
 int bzero (TYPE_1__*,int) ;
 int free (TYPE_1__*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int * ng_btsocket_hci_raw_node ;
 int ng_btsocket_hci_raw_sockets_mtx ;
 TYPE_1__* so2hci_raw_pcb (struct socket*) ;

void
ng_btsocket_hci_raw_detach(struct socket *so)
{
 ng_btsocket_hci_raw_pcb_p pcb = so2hci_raw_pcb(so);

 KASSERT(pcb != ((void*)0), ("ng_btsocket_hci_raw_detach: pcb == NULL"));

 if (ng_btsocket_hci_raw_node == ((void*)0))
  return;

 mtx_lock(&ng_btsocket_hci_raw_sockets_mtx);
 mtx_lock(&pcb->pcb_mtx);

 LIST_REMOVE(pcb, next);

 mtx_unlock(&pcb->pcb_mtx);
 mtx_unlock(&ng_btsocket_hci_raw_sockets_mtx);

 mtx_destroy(&pcb->pcb_mtx);

 bzero(pcb, sizeof(*pcb));
 free(pcb, M_NETGRAPH_BTSOCKET_HCI_RAW);

 so->so_pcb = ((void*)0);
}
