
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct tcphdr {int th_ack; } ;
struct tcpcb {int t_flags; int snd_ssthresh; int snd_cwnd; int snd_cwnd_prev; int snd_ssthresh_prev; TYPE_1__* ccv; int t_badrxtwin; int snd_max; int snd_nxt; int snd_recover_prev; int snd_recover; int snd_wnd; int t_bytes_acked; int t_dupacks; int t_inpcb; } ;
struct TYPE_4__ {int (* cong_signal ) (TYPE_1__*,int) ;} ;
struct TYPE_3__ {int curack; } ;


 TYPE_2__* CC_ALGO (struct tcpcb*) ;




 int ENTER_CONGRECOVERY (int) ;
 int ENTER_FASTRECOVERY (int) ;
 int EXIT_RECOVERY (int) ;
 int INP_WLOCK_ASSERT (int ) ;
 int IN_CONGRECOVERY (int) ;
 int IN_FASTRECOVERY (int) ;
 int TCPSTAT_INC (int ) ;
 int TF_ECN_PERMIT ;
 int TF_ECN_SND_CWR ;
 int TF_PREVVALID ;
 int TF_WASCRECOVERY ;
 int TF_WASFRECOVERY ;
 int max (int,int) ;
 int min (int ,int) ;
 int stub1 (TYPE_1__*,int) ;
 int tcp_maxseg (struct tcpcb*) ;
 int tcps_ecn_rcwnd ;
 int tcps_sndrexmitbad ;

void inline
cc_cong_signal(struct tcpcb *tp, struct tcphdr *th, uint32_t type)
{
 u_int maxseg;

 INP_WLOCK_ASSERT(tp->t_inpcb);

 switch(type) {
 case 130:
  if (!IN_FASTRECOVERY(tp->t_flags)) {
   tp->snd_recover = tp->snd_max;
   if (tp->t_flags & TF_ECN_PERMIT)
    tp->t_flags |= TF_ECN_SND_CWR;
  }
  break;
 case 131:
  if (!IN_CONGRECOVERY(tp->t_flags)) {
   TCPSTAT_INC(tcps_ecn_rcwnd);
   tp->snd_recover = tp->snd_max;
   if (tp->t_flags & TF_ECN_PERMIT)
    tp->t_flags |= TF_ECN_SND_CWR;
  }
  break;
 case 129:
  maxseg = tcp_maxseg(tp);
  tp->t_dupacks = 0;
  tp->t_bytes_acked = 0;
  EXIT_RECOVERY(tp->t_flags);
  tp->snd_ssthresh = max(2, min(tp->snd_wnd, tp->snd_cwnd) / 2 /
      maxseg) * maxseg;
  tp->snd_cwnd = maxseg;
  break;
 case 128:
  TCPSTAT_INC(tcps_sndrexmitbad);

  tp->snd_cwnd = tp->snd_cwnd_prev;
  tp->snd_ssthresh = tp->snd_ssthresh_prev;
  tp->snd_recover = tp->snd_recover_prev;
  if (tp->t_flags & TF_WASFRECOVERY)
   ENTER_FASTRECOVERY(tp->t_flags);
  if (tp->t_flags & TF_WASCRECOVERY)
   ENTER_CONGRECOVERY(tp->t_flags);
  tp->snd_nxt = tp->snd_max;
  tp->t_flags &= ~TF_PREVVALID;
  tp->t_badrxtwin = 0;
  break;
 }

 if (CC_ALGO(tp)->cong_signal != ((void*)0)) {
  if (th != ((void*)0))
   tp->ccv->curack = th->th_ack;
  CC_ALGO(tp)->cong_signal(tp->ccv, type);
 }
}
