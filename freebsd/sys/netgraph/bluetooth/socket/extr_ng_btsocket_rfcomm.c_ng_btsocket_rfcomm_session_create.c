
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct thread {int dummy; } ;
struct sockopt {int sopt_valsize; int * sopt_td; void* sopt_val; int sopt_name; int sopt_level; int sopt_dir; } ;
struct socket {int so_state; int so_snd; int so_rcv; } ;
struct sockaddr_l2cap {int l2cap_len; void* l2cap_bdaddr_type; scalar_t__ l2cap_cid; int l2cap_bdaddr; void* l2cap_psm; void* l2cap_family; } ;
struct sockaddr {int dummy; } ;
struct rfcomm_frame_hdr {int dummy; } ;
typedef TYPE_1__* ng_btsocket_rfcomm_session_p ;
typedef int mtu ;
typedef int l2sa ;
typedef int * bdaddr_p ;
struct TYPE_7__ {int session_mtx; struct socket* l2so; int state; scalar_t__ flags; scalar_t__ mtu; int dlcs; int outq; } ;


 void* AF_BLUETOOTH ;
 void* BDADDR_BREDR ;
 int ENOMEM ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int MA_OWNED ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int M_NETGRAPH_BTSOCKET_RFCOMM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_BTSOCKET_RFCOMM_SESSION_CLOSED ;
 int NG_BTSOCKET_RFCOMM_SESSION_CONNECTING ;
 scalar_t__ NG_BTSOCKET_RFCOMM_SESSION_INITIATOR ;
 int NG_BTSOCKET_RFCOMM_SESSION_LISTENING ;
 int NG_BT_MBUFQ_INIT (int *,int ) ;
 int NG_L2CAP_PSM_RFCOMM ;
 scalar_t__ RFCOMM_DEFAULT_MTU ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SOL_L2CAP ;
 int SOPT_SET ;
 int SO_L2CAP_IMTU ;
 int SO_RCV ;
 int SO_SND ;
 int SS_NBIO ;
 int bcopy (int *,int *,int) ;
 int bzero (TYPE_1__*,int) ;
 int free (TYPE_1__*,int ) ;
 void* htole16 (int ) ;
 int ifqmaxlen ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int ng_btsocket_rfcomm_sessions ;
 int ng_btsocket_rfcomm_sessions_mtx ;
 int ng_btsocket_rfcomm_upcall ;
 int sobind (struct socket*,struct sockaddr*,struct thread*) ;
 int soconnect (struct socket*,struct sockaddr*,struct thread*) ;
 int solisten (struct socket*,int,struct thread*) ;
 int sosetopt (struct socket*,struct sockopt*) ;
 int soupcall_clear (struct socket*,int ) ;
 int soupcall_set (struct socket*,int ,int ,int *) ;

__attribute__((used)) static int
ng_btsocket_rfcomm_session_create(ng_btsocket_rfcomm_session_p *sp,
  struct socket *l2so, bdaddr_p src, bdaddr_p dst,
  struct thread *td)
{
 ng_btsocket_rfcomm_session_p s = ((void*)0);
 struct sockaddr_l2cap l2sa;
 struct sockopt l2sopt;
 int error;
 u_int16_t mtu;

 mtx_assert(&ng_btsocket_rfcomm_sessions_mtx, MA_OWNED);


        s = malloc(sizeof(*s),
  M_NETGRAPH_BTSOCKET_RFCOMM, M_NOWAIT | M_ZERO);
        if (s == ((void*)0))
                return (ENOMEM);


 s->mtu = RFCOMM_DEFAULT_MTU;
 s->flags = 0;
 s->state = NG_BTSOCKET_RFCOMM_SESSION_CLOSED;
 NG_BT_MBUFQ_INIT(&s->outq, ifqmaxlen);
 mtx_init(&s->session_mtx, "btsocks_rfcomm_session_mtx", ((void*)0),
  MTX_DEF|MTX_DUPOK);

 LIST_INIT(&s->dlcs);


 SOCKBUF_LOCK(&l2so->so_rcv);
 soupcall_set(l2so, SO_RCV, ng_btsocket_rfcomm_upcall, ((void*)0));
 SOCKBUF_UNLOCK(&l2so->so_rcv);
 SOCKBUF_LOCK(&l2so->so_snd);
 soupcall_set(l2so, SO_SND, ng_btsocket_rfcomm_upcall, ((void*)0));
 SOCKBUF_UNLOCK(&l2so->so_snd);
 l2so->so_state |= SS_NBIO;
 s->l2so = l2so;

 mtx_lock(&s->session_mtx);






 if (src == ((void*)0) && dst == ((void*)0))
  goto done;







 mtu = s->mtu + sizeof(struct rfcomm_frame_hdr) + 1 + 1;

 l2sopt.sopt_dir = SOPT_SET;
 l2sopt.sopt_level = SOL_L2CAP;
 l2sopt.sopt_name = SO_L2CAP_IMTU;
 l2sopt.sopt_val = (void *) &mtu;
 l2sopt.sopt_valsize = sizeof(mtu);
 l2sopt.sopt_td = ((void*)0);

 error = sosetopt(s->l2so, &l2sopt);
 if (error != 0)
  goto bad;


 l2sa.l2cap_len = sizeof(l2sa);
 l2sa.l2cap_family = AF_BLUETOOTH;
 l2sa.l2cap_psm = (dst == ((void*)0))? htole16(NG_L2CAP_PSM_RFCOMM) : 0;
 bcopy(src, &l2sa.l2cap_bdaddr, sizeof(l2sa.l2cap_bdaddr));
 l2sa.l2cap_cid = 0;
 l2sa.l2cap_bdaddr_type = BDADDR_BREDR;

 error = sobind(s->l2so, (struct sockaddr *) &l2sa, td);
 if (error != 0)
  goto bad;


 if (dst == ((void*)0)) {
  s->flags = 0;
  s->state = NG_BTSOCKET_RFCOMM_SESSION_LISTENING;

  error = solisten(s->l2so, 10, td);
  if (error != 0)
   goto bad;
 } else {
  s->flags = NG_BTSOCKET_RFCOMM_SESSION_INITIATOR;
  s->state = NG_BTSOCKET_RFCOMM_SESSION_CONNECTING;

  l2sa.l2cap_len = sizeof(l2sa);
  l2sa.l2cap_family = AF_BLUETOOTH;
  l2sa.l2cap_psm = htole16(NG_L2CAP_PSM_RFCOMM);
         bcopy(dst, &l2sa.l2cap_bdaddr, sizeof(l2sa.l2cap_bdaddr));
  l2sa.l2cap_cid = 0;
  l2sa.l2cap_bdaddr_type = BDADDR_BREDR;

  error = soconnect(s->l2so, (struct sockaddr *) &l2sa, td);
  if (error != 0)
   goto bad;
 }

done:
 LIST_INSERT_HEAD(&ng_btsocket_rfcomm_sessions, s, next);
 *sp = s;

 mtx_unlock(&s->session_mtx);

 return (0);

bad:
 mtx_unlock(&s->session_mtx);


 SOCKBUF_LOCK(&l2so->so_rcv);
 soupcall_clear(s->l2so, SO_RCV);
 SOCKBUF_UNLOCK(&l2so->so_rcv);
 SOCKBUF_LOCK(&l2so->so_snd);
 soupcall_clear(s->l2so, SO_SND);
 SOCKBUF_UNLOCK(&l2so->so_snd);
 l2so->so_state &= ~SS_NBIO;

 mtx_destroy(&s->session_mtx);
 bzero(s, sizeof(*s));
 free(s, M_NETGRAPH_BTSOCKET_RFCOMM);

 return (error);
}
