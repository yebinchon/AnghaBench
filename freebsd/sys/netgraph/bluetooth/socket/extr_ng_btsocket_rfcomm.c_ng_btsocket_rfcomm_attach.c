
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
typedef TYPE_3__* ng_btsocket_rfcomm_pcb_p ;
typedef scalar_t__ caddr_t ;
struct TYPE_9__ {int lmodem; int rmodem; int pcb_mtx; int timo; int rx_cred; scalar_t__ tx_cred; int mtu; int flags; int state; struct socket* so; } ;


 int BLUETOOTH_PROTO_RFCOMM ;
 int EISCONN ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int LIST_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int MTX_DEF ;
 int M_NETGRAPH_BTSOCKET_RFCOMM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_BTSOCKET_RFCOMM_DLC_CFC ;
 int NG_BTSOCKET_RFCOMM_DLC_CLOSED ;
 int NG_BTSOCKET_RFCOMM_RECVSPACE ;
 int NG_BTSOCKET_RFCOMM_SENDSPACE ;
 int RFCOMM_DEFAULT_CREDITS ;
 int RFCOMM_DEFAULT_MTU ;
 int RFCOMM_MODEM_DV ;
 int RFCOMM_MODEM_RTC ;
 int RFCOMM_MODEM_RTR ;
 scalar_t__ SOCK_STREAM ;
 int callout_init_mtx (int *,int *,int ) ;
 TYPE_3__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int ng_btsocket_rfcomm_sockets ;
 int ng_btsocket_rfcomm_sockets_mtx ;
 TYPE_3__* so2rfcomm_pcb (struct socket*) ;
 int soreserve (struct socket*,int ,int ) ;

int
ng_btsocket_rfcomm_attach(struct socket *so, int proto, struct thread *td)
{
 ng_btsocket_rfcomm_pcb_p pcb = so2rfcomm_pcb(so);
 int error;


 if (so->so_type != SOCK_STREAM)
  return (ESOCKTNOSUPPORT);







 if (pcb != ((void*)0))
  return (EISCONN);


 if ((so->so_snd.sb_hiwat == 0) || (so->so_rcv.sb_hiwat == 0)) {
  error = soreserve(so, NG_BTSOCKET_RFCOMM_SENDSPACE,
     NG_BTSOCKET_RFCOMM_RECVSPACE);
  if (error != 0)
   return (error);
 }


        pcb = malloc(sizeof(*pcb),
  M_NETGRAPH_BTSOCKET_RFCOMM, M_NOWAIT | M_ZERO);
        if (pcb == ((void*)0))
                return (ENOMEM);


 so->so_pcb = (caddr_t) pcb;
 pcb->so = so;


 pcb->state = NG_BTSOCKET_RFCOMM_DLC_CLOSED;
 pcb->flags = NG_BTSOCKET_RFCOMM_DLC_CFC;

 pcb->lmodem =
 pcb->rmodem = (RFCOMM_MODEM_RTC | RFCOMM_MODEM_RTR | RFCOMM_MODEM_DV);

 pcb->mtu = RFCOMM_DEFAULT_MTU;
 pcb->tx_cred = 0;
 pcb->rx_cred = RFCOMM_DEFAULT_CREDITS;

 mtx_init(&pcb->pcb_mtx, "btsocks_rfcomm_pcb_mtx", ((void*)0), MTX_DEF);
 callout_init_mtx(&pcb->timo, &pcb->pcb_mtx, 0);


 mtx_lock(&ng_btsocket_rfcomm_sockets_mtx);
 LIST_INSERT_HEAD(&ng_btsocket_rfcomm_sockets, pcb, next);
 mtx_unlock(&ng_btsocket_rfcomm_sockets_mtx);

        return (0);
}
