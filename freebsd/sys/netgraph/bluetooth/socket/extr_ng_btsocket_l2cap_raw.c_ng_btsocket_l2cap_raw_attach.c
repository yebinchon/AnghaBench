
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {scalar_t__ so_type; scalar_t__ so_pcb; } ;
typedef TYPE_1__* ng_btsocket_l2cap_raw_pcb_p ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {int pcb_mtx; int flags; struct socket* so; } ;


 int EISCONN ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int MTX_DEF ;
 int M_NETGRAPH_BTSOCKET_L2CAP_RAW ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_BTSOCKET_L2CAP_RAW_PRIVILEGED ;
 int NG_BTSOCKET_L2CAP_RAW_RECVSPACE ;
 int NG_BTSOCKET_L2CAP_RAW_SENDSPACE ;
 int PRIV_NETBLUETOOTH_RAW ;
 scalar_t__ SOCK_RAW ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int * ng_btsocket_l2cap_raw_node ;
 int ng_btsocket_l2cap_raw_sockets ;
 int ng_btsocket_l2cap_raw_sockets_mtx ;
 scalar_t__ priv_check (struct thread*,int ) ;
 TYPE_1__* so2l2cap_raw_pcb (struct socket*) ;
 int soreserve (struct socket*,int ,int ) ;

int
ng_btsocket_l2cap_raw_attach(struct socket *so, int proto, struct thread *td)
{
 ng_btsocket_l2cap_raw_pcb_p pcb = so2l2cap_raw_pcb(so);
 int error;

 if (pcb != ((void*)0))
  return (EISCONN);

 if (ng_btsocket_l2cap_raw_node == ((void*)0))
  return (EPROTONOSUPPORT);
 if (so->so_type != SOCK_RAW)
  return (ESOCKTNOSUPPORT);


 error = soreserve(so, NG_BTSOCKET_L2CAP_RAW_SENDSPACE,
   NG_BTSOCKET_L2CAP_RAW_RECVSPACE);
 if (error != 0)
  return (error);


        pcb = malloc(sizeof(*pcb),
  M_NETGRAPH_BTSOCKET_L2CAP_RAW, M_NOWAIT|M_ZERO);
        if (pcb == ((void*)0))
                return (ENOMEM);


 so->so_pcb = (caddr_t) pcb;
 pcb->so = so;

 if (priv_check(td, PRIV_NETBLUETOOTH_RAW) == 0)
  pcb->flags |= NG_BTSOCKET_L2CAP_RAW_PRIVILEGED;

 mtx_init(&pcb->pcb_mtx, "btsocks_l2cap_raw_pcb_mtx", ((void*)0), MTX_DEF);


 mtx_lock(&ng_btsocket_l2cap_raw_sockets_mtx);
 LIST_INSERT_HEAD(&ng_btsocket_l2cap_raw_sockets, pcb, next);
 mtx_unlock(&ng_btsocket_l2cap_raw_sockets_mtx);

        return (0);
}
