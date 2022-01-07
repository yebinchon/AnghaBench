
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct TYPE_3__ {scalar_t__ sack_bytes_rexmit; } ;
struct tcpcb {int t_maxseg; scalar_t__ snd_cwnd; scalar_t__ snd_nxt; scalar_t__ sack_newdata; scalar_t__ snd_ssthresh; TYPE_2__* t_fb; int t_flags; TYPE_1__ sackhint; scalar_t__ t_rtttime; int t_inpcb; } ;
struct TYPE_4__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;


 int BYTES_THIS_ACK (struct tcpcb*,struct tcphdr*) ;
 int INP_WLOCK_ASSERT (int ) ;
 int TF_ACKNOW ;
 int TT_REXMT ;
 int stub1 (struct tcpcb*) ;
 int tcp_timer_activate (struct tcpcb*,int ,int ) ;

void
tcp_sack_partialack(struct tcpcb *tp, struct tcphdr *th)
{
 int num_segs = 1;

 INP_WLOCK_ASSERT(tp->t_inpcb);
 tcp_timer_activate(tp, TT_REXMT, 0);
 tp->t_rtttime = 0;

 if ((BYTES_THIS_ACK(tp, th) / tp->t_maxseg) >= 2)
  num_segs = 2;
 tp->snd_cwnd = (tp->sackhint.sack_bytes_rexmit +
     (tp->snd_nxt - tp->sack_newdata) + num_segs * tp->t_maxseg);
 if (tp->snd_cwnd > tp->snd_ssthresh)
  tp->snd_cwnd = tp->snd_ssthresh;
 tp->t_flags |= TF_ACKNOW;
 (void) tp->t_fb->tfb_tcp_output(tp);
}
