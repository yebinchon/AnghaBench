
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {scalar_t__ so_type; scalar_t__ so_pcb; } ;
typedef TYPE_2__* ng_btsocket_hci_raw_pcb_p ;
typedef scalar_t__ caddr_t ;
struct TYPE_6__ {int event_mask; } ;
struct TYPE_7__ {int pcb_mtx; TYPE_1__ filter; int flags; struct socket* so; } ;


 int BLUETOOTH_PROTO_HCI ;
 int EISCONN ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int MTX_DEF ;
 int M_NETGRAPH_BTSOCKET_HCI_RAW ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_BTSOCKET_HCI_RAW_PRIVILEGED ;
 int NG_BTSOCKET_HCI_RAW_RECVSPACE ;
 int NG_BTSOCKET_HCI_RAW_SENDSPACE ;
 scalar_t__ NG_HCI_EVENT_COMMAND_COMPL ;
 scalar_t__ NG_HCI_EVENT_COMMAND_STATUS ;
 int PRIV_NETBLUETOOTH_RAW ;
 scalar_t__ SOCK_RAW ;
 int bit_set (int ,scalar_t__) ;
 TYPE_2__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int * ng_btsocket_hci_raw_node ;
 int ng_btsocket_hci_raw_sockets ;
 int ng_btsocket_hci_raw_sockets_mtx ;
 scalar_t__ priv_check (struct thread*,int ) ;
 TYPE_2__* so2hci_raw_pcb (struct socket*) ;
 int soreserve (struct socket*,int ,int ) ;

int
ng_btsocket_hci_raw_attach(struct socket *so, int proto, struct thread *td)
{
 ng_btsocket_hci_raw_pcb_p pcb = so2hci_raw_pcb(so);
 int error = 0;

 if (pcb != ((void*)0))
  return (EISCONN);

 if (ng_btsocket_hci_raw_node == ((void*)0))
  return (EPROTONOSUPPORT);
 if (proto != BLUETOOTH_PROTO_HCI)
  return (EPROTONOSUPPORT);
 if (so->so_type != SOCK_RAW)
  return (ESOCKTNOSUPPORT);

 error = soreserve(so, NG_BTSOCKET_HCI_RAW_SENDSPACE,
    NG_BTSOCKET_HCI_RAW_RECVSPACE);
 if (error != 0)
  return (error);

 pcb = malloc(sizeof(*pcb),
  M_NETGRAPH_BTSOCKET_HCI_RAW, M_NOWAIT|M_ZERO);
 if (pcb == ((void*)0))
  return (ENOMEM);

 so->so_pcb = (caddr_t) pcb;
 pcb->so = so;

 if (priv_check(td, PRIV_NETBLUETOOTH_RAW) == 0)
  pcb->flags |= NG_BTSOCKET_HCI_RAW_PRIVILEGED;






 bit_set(pcb->filter.event_mask, NG_HCI_EVENT_COMMAND_COMPL - 1);
 bit_set(pcb->filter.event_mask, NG_HCI_EVENT_COMMAND_STATUS - 1);

 mtx_init(&pcb->pcb_mtx, "btsocks_hci_raw_pcb_mtx", ((void*)0), MTX_DEF);

 mtx_lock(&ng_btsocket_hci_raw_sockets_mtx);
 LIST_INSERT_HEAD(&ng_btsocket_hci_raw_sockets, pcb, next);
 mtx_unlock(&ng_btsocket_hci_raw_sockets_mtx);

 return (0);
}
