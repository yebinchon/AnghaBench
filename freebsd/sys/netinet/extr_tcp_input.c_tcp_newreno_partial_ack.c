
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
typedef int tcp_seq ;
struct tcphdr {int th_ack; } ;
struct tcpcb {scalar_t__ snd_cwnd; int snd_nxt; TYPE_1__* t_fb; int t_flags; scalar_t__ t_rtttime; int t_inpcb; } ;
struct TYPE_2__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;


 scalar_t__ BYTES_THIS_ACK (struct tcpcb*,struct tcphdr*) ;
 int INP_WLOCK_ASSERT (int ) ;
 scalar_t__ SEQ_GT (int ,int ) ;
 int TF_ACKNOW ;
 int TT_REXMT ;
 int stub1 (struct tcpcb*) ;
 scalar_t__ tcp_maxseg (struct tcpcb*) ;
 int tcp_timer_activate (struct tcpcb*,int ,int ) ;

void
tcp_newreno_partial_ack(struct tcpcb *tp, struct tcphdr *th)
{
 tcp_seq onxt = tp->snd_nxt;
 uint32_t ocwnd = tp->snd_cwnd;
 u_int maxseg = tcp_maxseg(tp);

 INP_WLOCK_ASSERT(tp->t_inpcb);

 tcp_timer_activate(tp, TT_REXMT, 0);
 tp->t_rtttime = 0;
 tp->snd_nxt = th->th_ack;




 tp->snd_cwnd = maxseg + BYTES_THIS_ACK(tp, th);
 tp->t_flags |= TF_ACKNOW;
 (void) tp->t_fb->tfb_tcp_output(tp);
 tp->snd_cwnd = ocwnd;
 if (SEQ_GT(onxt, tp->snd_nxt))
  tp->snd_nxt = onxt;




 if (tp->snd_cwnd > BYTES_THIS_ACK(tp, th))
  tp->snd_cwnd -= BYTES_THIS_ACK(tp, th);
 else
  tp->snd_cwnd = 0;
 tp->snd_cwnd += maxseg;
}
