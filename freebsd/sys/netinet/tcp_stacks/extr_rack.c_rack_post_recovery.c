
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcphdr {int th_ack; } ;
struct tcpcb {int snd_cwnd; scalar_t__ snd_ssthresh; int t_flags; int snd_una; int snd_recover; TYPE_2__* ccv; scalar_t__ t_fb_ptr; int t_inpcb; } ;
struct TYPE_4__ {int rc_prop_rate; int rc_loss_count; scalar_t__ rc_prr_sndcnt; scalar_t__ rc_prop_reduce; } ;
struct tcp_rack {TYPE_1__ r_ctl; } ;
typedef int int32_t ;
struct TYPE_6__ {int (* post_recovery ) (TYPE_2__*) ;} ;
struct TYPE_5__ {int curack; } ;


 TYPE_3__* CC_ALGO (struct tcpcb*) ;
 int EXIT_RECOVERY (int ) ;
 int INP_WLOCK_ASSERT (int ) ;
 int rack_log_to_prr (struct tcp_rack*,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
rack_post_recovery(struct tcpcb *tp, struct tcphdr *th)
{
 struct tcp_rack *rack;

 INP_WLOCK_ASSERT(tp->t_inpcb);
 rack = (struct tcp_rack *)tp->t_fb_ptr;
 if (CC_ALGO(tp)->post_recovery != ((void*)0)) {
  tp->ccv->curack = th->th_ack;
  CC_ALGO(tp)->post_recovery(tp->ccv);
 }





 if (rack->r_ctl.rc_prop_reduce && rack->r_ctl.rc_prop_rate) {
  int32_t reduce;

  reduce = (rack->r_ctl.rc_loss_count * rack->r_ctl.rc_prop_rate);
  if (reduce > 50) {
   reduce = 50;
  }
  tp->snd_cwnd -= ((reduce * tp->snd_cwnd) / 100);
 } else {
  if (tp->snd_cwnd > tp->snd_ssthresh) {

   tp->snd_cwnd = tp->snd_ssthresh;
  }
 }
 if (rack->r_ctl.rc_prr_sndcnt > 0) {

  tp->snd_cwnd += rack->r_ctl.rc_prr_sndcnt;
  rack->r_ctl.rc_prr_sndcnt = 0;
  rack_log_to_prr(rack, 1);
 }
 tp->snd_recover = tp->snd_una;
 EXIT_RECOVERY(tp->t_flags);


}
