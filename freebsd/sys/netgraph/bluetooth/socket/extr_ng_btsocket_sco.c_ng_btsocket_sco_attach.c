
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_8__ {scalar_t__ sb_hiwat; } ;
struct TYPE_7__ {scalar_t__ sb_hiwat; } ;
struct socket {scalar_t__ so_type; scalar_t__ so_pcb; TYPE_2__ so_rcv; TYPE_1__ so_snd; } ;
typedef TYPE_3__* ng_btsocket_sco_pcb_p ;
typedef scalar_t__ caddr_t ;
struct TYPE_9__ {int pcb_mtx; int timo; int state; struct socket* so; } ;


 int BLUETOOTH_PROTO_SCO ;
 int EISCONN ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int LIST_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int MA_OWNED ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int M_NETGRAPH_BTSOCKET_SCO ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_BTSOCKET_SCO_CLOSED ;
 int NG_BTSOCKET_SCO_RECVSPACE ;
 int NG_BTSOCKET_SCO_SENDSPACE ;
 scalar_t__ SOCK_SEQPACKET ;
 int callout_init (int *,int) ;
 TYPE_3__* malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int * ng_btsocket_sco_node ;
 int ng_btsocket_sco_sockets ;
 int ng_btsocket_sco_sockets_mtx ;
 TYPE_3__* so2sco_pcb (struct socket*) ;
 int soreserve (struct socket*,int ,int ) ;

int
ng_btsocket_sco_attach(struct socket *so, int proto, struct thread *td)
{
 ng_btsocket_sco_pcb_p pcb = so2sco_pcb(so);
 int error;


 if (ng_btsocket_sco_node == ((void*)0))
  return (EPROTONOSUPPORT);
 if (so->so_type != SOCK_SEQPACKET)
  return (ESOCKTNOSUPPORT);







 if (pcb != ((void*)0))
  return (EISCONN);


 if ((so->so_snd.sb_hiwat == 0) || (so->so_rcv.sb_hiwat == 0)) {
  error = soreserve(so, NG_BTSOCKET_SCO_SENDSPACE,
     NG_BTSOCKET_SCO_RECVSPACE);
  if (error != 0)
   return (error);
 }


        pcb = malloc(sizeof(*pcb),
  M_NETGRAPH_BTSOCKET_SCO, M_NOWAIT | M_ZERO);
        if (pcb == ((void*)0))
                return (ENOMEM);


 so->so_pcb = (caddr_t) pcb;
 pcb->so = so;
 pcb->state = NG_BTSOCKET_SCO_CLOSED;

 callout_init(&pcb->timo, 1);
 mtx_init(&pcb->pcb_mtx, "btsocks_sco_pcb_mtx", ((void*)0),
  MTX_DEF|MTX_DUPOK);
 if (td != ((void*)0))
  mtx_lock(&ng_btsocket_sco_sockets_mtx);
 else
  mtx_assert(&ng_btsocket_sco_sockets_mtx, MA_OWNED);

 LIST_INSERT_HEAD(&ng_btsocket_sco_sockets, pcb, next);

 if (td != ((void*)0))
  mtx_unlock(&ng_btsocket_sco_sockets_mtx);

        return (0);
}
