
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct thread {int dummy; } ;
struct TYPE_9__ {scalar_t__ sb_hiwat; } ;
struct TYPE_8__ {scalar_t__ sb_hiwat; } ;
struct socket {scalar_t__ so_type; scalar_t__ so_pcb; TYPE_2__ so_rcv; TYPE_1__ so_snd; } ;
typedef TYPE_3__* ng_btsocket_l2cap_pcb_p ;
typedef scalar_t__ caddr_t ;
struct TYPE_11__ {int flags; int token_rate; int token_bucket_size; int peak_bandwidth; int latency; int delay_variation; int service_type; } ;
struct TYPE_10__ {scalar_t__ token; int pcb_mtx; int timo; int link_timo; int flush_timo; int oflow; TYPE_6__ iflow; int omtu; int imtu; int state; struct socket* so; } ;


 int BLUETOOTH_PROTO_L2CAP ;
 int EISCONN ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int LIST_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int MA_OWNED ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int M_NETGRAPH_BTSOCKET_L2CAP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_BTSOCKET_L2CAP_CLOSED ;
 int NG_BTSOCKET_L2CAP_RECVSPACE ;
 int NG_BTSOCKET_L2CAP_SENDSPACE ;
 int NG_HCI_SERVICE_TYPE_BEST_EFFORT ;
 int NG_L2CAP_FLUSH_TIMO_DEFAULT ;
 int NG_L2CAP_LINK_TIMO_DEFAULT ;
 int NG_L2CAP_MTU_DEFAULT ;
 scalar_t__ SOCK_SEQPACKET ;
 int bcopy (TYPE_6__*,int *,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 TYPE_3__* malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int * ng_btsocket_l2cap_node ;
 int ng_btsocket_l2cap_sockets ;
 int ng_btsocket_l2cap_sockets_mtx ;
 TYPE_3__* so2l2cap_pcb (struct socket*) ;
 int soreserve (struct socket*,int ,int ) ;

int
ng_btsocket_l2cap_attach(struct socket *so, int proto, struct thread *td)
{
 static u_int32_t token = 0;
 ng_btsocket_l2cap_pcb_p pcb = so2l2cap_pcb(so);
 int error;


 if (ng_btsocket_l2cap_node == ((void*)0))
  return (EPROTONOSUPPORT);
 if (so->so_type != SOCK_SEQPACKET)
  return (ESOCKTNOSUPPORT);







 if (pcb != ((void*)0))
  return (EISCONN);


 if ((so->so_snd.sb_hiwat == 0) || (so->so_rcv.sb_hiwat == 0)) {
  error = soreserve(so, NG_BTSOCKET_L2CAP_SENDSPACE,
     NG_BTSOCKET_L2CAP_RECVSPACE);
  if (error != 0)
   return (error);
 }


        pcb = malloc(sizeof(*pcb),
  M_NETGRAPH_BTSOCKET_L2CAP, M_NOWAIT | M_ZERO);
        if (pcb == ((void*)0))
                return (ENOMEM);


 so->so_pcb = (caddr_t) pcb;
 pcb->so = so;
 pcb->state = NG_BTSOCKET_L2CAP_CLOSED;


 pcb->imtu = pcb->omtu = NG_L2CAP_MTU_DEFAULT;


 pcb->iflow.flags = 0x0;
 pcb->iflow.service_type = NG_HCI_SERVICE_TYPE_BEST_EFFORT;
 pcb->iflow.token_rate = 0xffffffff;
 pcb->iflow.token_bucket_size = 0xffffffff;
 pcb->iflow.peak_bandwidth = 0x00000000;
 pcb->iflow.latency = 0xffffffff;
 pcb->iflow.delay_variation = 0xffffffff;

 bcopy(&pcb->iflow, &pcb->oflow, sizeof(pcb->oflow));

 pcb->flush_timo = NG_L2CAP_FLUSH_TIMO_DEFAULT;
 pcb->link_timo = NG_L2CAP_LINK_TIMO_DEFAULT;
 mtx_init(&pcb->pcb_mtx, "btsocks_l2cap_pcb_mtx", ((void*)0),
  MTX_DEF|MTX_DUPOK);
 callout_init_mtx(&pcb->timo, &pcb->pcb_mtx, 0);
 if (td != ((void*)0))
  mtx_lock(&ng_btsocket_l2cap_sockets_mtx);
 else
  mtx_assert(&ng_btsocket_l2cap_sockets_mtx, MA_OWNED);


 if (++ token == 0)
  token ++;

 pcb->token = token;

 LIST_INSERT_HEAD(&ng_btsocket_l2cap_sockets, pcb, next);

 if (td != ((void*)0))
  mtx_unlock(&ng_btsocket_l2cap_sockets_mtx);

        return (0);
}
