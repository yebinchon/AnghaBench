
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_maxseg; int t_flags; TYPE_1__* t_fb; int snd_max; int snd_recover; int snd_una; int snd_nxt; scalar_t__ t_rtttime; } ;
struct TYPE_5__ {scalar_t__ sb_hiwat; } ;
struct socket {TYPE_2__ so_snd; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; } ;
struct TYPE_4__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;


 int EXIT_FASTRECOVERY (int) ;
 int INP_DROPPED ;
 int INP_TIMEWAIT ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int SOCKBUF_LOCK (TYPE_2__*) ;
 int SOCKBUF_UNLOCK (TYPE_2__*) ;
 int TCPSTAT_INC (int ) ;
 int TF_SACK_PERMIT ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int stub1 (struct tcpcb*) ;
 int tcp_free_sackholes (struct tcpcb*) ;
 int tcp_mss_update (struct tcpcb*,int,int,int *,int *) ;
 int tcps_mturesent ;

__attribute__((used)) static void
tcp_mtudisc(struct inpcb *inp, int mtuoffer)
{
 struct tcpcb *tp;
 struct socket *so;

 INP_WLOCK_ASSERT(inp);
 if ((inp->inp_flags & INP_TIMEWAIT) ||
     (inp->inp_flags & INP_DROPPED))
  return;

 tp = intotcpcb(inp);
 KASSERT(tp != ((void*)0), ("tcp_mtudisc: tp == NULL"));

 tcp_mss_update(tp, -1, mtuoffer, ((void*)0), ((void*)0));

 so = inp->inp_socket;
 SOCKBUF_LOCK(&so->so_snd);

 if (so->so_snd.sb_hiwat < tp->t_maxseg)
  tp->t_maxseg = so->so_snd.sb_hiwat;
 SOCKBUF_UNLOCK(&so->so_snd);

 TCPSTAT_INC(tcps_mturesent);
 tp->t_rtttime = 0;
 tp->snd_nxt = tp->snd_una;
 tcp_free_sackholes(tp);
 tp->snd_recover = tp->snd_max;
 if (tp->t_flags & TF_SACK_PERMIT)
  EXIT_FASTRECOVERY(tp->t_flags);
 tp->t_fb->tfb_tcp_output(tp);
}
