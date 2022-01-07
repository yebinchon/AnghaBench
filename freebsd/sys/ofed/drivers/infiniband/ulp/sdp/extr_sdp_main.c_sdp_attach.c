
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_4__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct socket {int so_options; scalar_t__ so_linger; scalar_t__ so_pcb; int so_cred; TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
struct sdp_sock {int rxctlq; int state; scalar_t__ qp_active; scalar_t__ flags; int cred; struct socket* socket; int lock; } ;
typedef scalar_t__ caddr_t ;


 int ENOBUFS ;
 int INT_MAX ;
 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct sdp_sock*,int ) ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SB_AUTOSIZE ;
 int SDP_LIST_WLOCK () ;
 int SDP_LIST_WUNLOCK () ;
 int SO_LINGER ;
 int TCPS_CLOSED ;
 scalar_t__ TCP_LINGERTIME ;
 int crhold (int ) ;
 int list ;
 int mbufq_init (int *,int ) ;
 int rw_init (int *,char*) ;
 int sdp_count ;
 int sdp_init_sock (struct socket*) ;
 int sdp_list ;
 int sdp_recvspace ;
 int sdp_sendspace ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 int sdp_zone ;
 int soreserve (struct socket*,int ,int ) ;
 struct sdp_sock* uma_zalloc (int ,int) ;

__attribute__((used)) static int
sdp_attach(struct socket *so, int proto, struct thread *td)
{
 struct sdp_sock *ssk;
 int error;

 ssk = sdp_sk(so);
 KASSERT(ssk == ((void*)0), ("sdp_attach: ssk already set on so %p", so));
 if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
  error = soreserve(so, sdp_sendspace, sdp_recvspace);
  if (error)
   return (error);
 }
 so->so_rcv.sb_flags |= SB_AUTOSIZE;
 so->so_snd.sb_flags |= SB_AUTOSIZE;
 ssk = uma_zalloc(sdp_zone, M_NOWAIT | M_ZERO);
 if (ssk == ((void*)0))
  return (ENOBUFS);
 rw_init(&ssk->lock, "sdpsock");
 ssk->socket = so;
 ssk->cred = crhold(so->so_cred);
 so->so_pcb = (caddr_t)ssk;
 sdp_init_sock(so);
 ssk->flags = 0;
 ssk->qp_active = 0;
 ssk->state = TCPS_CLOSED;
 mbufq_init(&ssk->rxctlq, INT_MAX);
 SDP_LIST_WLOCK();
 LIST_INSERT_HEAD(&sdp_list, ssk, list);
 sdp_count++;
 SDP_LIST_WUNLOCK();
 if ((so->so_options & SO_LINGER) && so->so_linger == 0)
  so->so_linger = TCP_LINGERTIME;

 return (0);
}
