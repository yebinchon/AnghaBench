
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {scalar_t__ snd_cwnd; scalar_t__ snd_ssthresh; int snd_una; int snd_recover; int t_flags; scalar_t__ t_fb_ptr; } ;
struct TYPE_2__ {scalar_t__ rc_rsm_start; scalar_t__ rc_cwnd_at; scalar_t__ rc_ssthresh_at; int rc_reorder_ts; } ;
struct tcp_rack {TYPE_1__ r_ctl; } ;
struct rack_sendmap {int r_flags; scalar_t__ r_start; int r_end; } ;


 int EXIT_RECOVERY (int ) ;
 scalar_t__ IN_RECOVERY (int ) ;
 int RACK_HAS_FIN ;
 int RACK_TLP ;
 int RACK_WAS_SACKPASS ;
 int counter_u64_add (int ,int) ;
 int rack_badfr ;
 int rack_badfr_bytes ;
 int rack_reorder_seen ;

__attribute__((used)) static void
rack_earlier_retran(struct tcpcb *tp, struct rack_sendmap *rsm,
    uint32_t t, uint32_t cts)
{





 struct tcp_rack *rack;

 if (rsm->r_flags & RACK_HAS_FIN) {





  return;
 }
 if (rsm->r_flags & RACK_TLP) {



  return;
 }
 rack = (struct tcp_rack *)tp->t_fb_ptr;

 if (IN_RECOVERY(tp->t_flags)) {
  if (rack->r_ctl.rc_rsm_start == rsm->r_start) {




   EXIT_RECOVERY(tp->t_flags);
   tp->snd_recover = tp->snd_una;
   if (rack->r_ctl.rc_cwnd_at > tp->snd_cwnd)
    tp->snd_cwnd = rack->r_ctl.rc_cwnd_at;
   if (rack->r_ctl.rc_ssthresh_at > tp->snd_ssthresh)
    tp->snd_ssthresh = rack->r_ctl.rc_ssthresh_at;
  }
 }
 if (rsm->r_flags & RACK_WAS_SACKPASS) {




  counter_u64_add(rack_reorder_seen, 1);
  rack->r_ctl.rc_reorder_ts = cts;
 }
 counter_u64_add(rack_badfr, 1);
 counter_u64_add(rack_badfr_bytes, (rsm->r_end - rsm->r_start));
}
