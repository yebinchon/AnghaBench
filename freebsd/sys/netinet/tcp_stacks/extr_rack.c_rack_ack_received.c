
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct tcphdr {scalar_t__ th_ack; } ;
struct tcpcb {scalar_t__ snd_cwnd; scalar_t__ snd_wnd; int t_flags; int t_stats_gput_prev; scalar_t__ snd_ssthresh; scalar_t__ t_bytes_acked; scalar_t__ t_peakrate_thr; int t_stats; TYPE_2__* ccv; scalar_t__ t_maxpeakrate; scalar_t__ gput_ts; scalar_t__ gput_seq; int gput_ack; int t_inpcb; } ;
struct TYPE_4__ {scalar_t__ rc_early_recovery_segs; int* rc_gp_history; size_t rc_gp_hist_idx; int rc_gp_hist_filled; scalar_t__ rc_rack_largest_cwnd; } ;
struct tcp_rack {TYPE_1__ r_ctl; } ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_6__ {int (* ack_received ) (TYPE_2__*,scalar_t__) ;} ;
struct TYPE_5__ {scalar_t__ curack; int flags; scalar_t__ bytes_this_ack; scalar_t__ nsegs; } ;


 scalar_t__ BYTES_THIS_ACK (struct tcpcb*,struct tcphdr*) ;
 int CCF_ABC_SENTAWND ;
 int CCF_CWND_LIMITED ;
 scalar_t__ CC_ACK ;
 TYPE_3__* CC_ALGO (struct tcpcb*) ;
 int INP_WLOCK_ASSERT (int ) ;
 size_t RACK_GP_HIST ;
 scalar_t__ SEQ_GEQ (scalar_t__,int ) ;
 int TF_GPUTINPROG ;
 int VOI_TCP_CALCFRWINDIFF ;
 int VOI_TCP_GPUT ;
 int VOI_TCP_GPUT_ND ;
 int VOI_TCP_LCWIN ;
 scalar_t__ V_tcp_abc_l_var ;
 scalar_t__ ctf_fixed_maxseg (struct tcpcb*) ;
 int max (int,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int stats_voi_update_abs_s32 (int ,int ,int) ;
 int stats_voi_update_abs_u32 (int ,int ,int) ;
 int stats_voi_update_abs_ulong (int ,int ,scalar_t__) ;
 int stub1 (TYPE_2__*,scalar_t__) ;
 scalar_t__ tcp_ts_getticks () ;
 int tcp_update_peakrate_thr (struct tcpcb*) ;

__attribute__((used)) static void
rack_ack_received(struct tcpcb *tp, struct tcp_rack *rack, struct tcphdr *th, uint16_t nsegs,
    uint16_t type, int32_t recovery)
{




 INP_WLOCK_ASSERT(tp->t_inpcb);
 tp->ccv->nsegs = nsegs;
 tp->ccv->bytes_this_ack = BYTES_THIS_ACK(tp, th);
 if ((recovery) && (rack->r_ctl.rc_early_recovery_segs)) {
  uint32_t max;

  max = rack->r_ctl.rc_early_recovery_segs * ctf_fixed_maxseg(tp);
  if (tp->ccv->bytes_this_ack > max) {
   tp->ccv->bytes_this_ack = max;
  }
 }
 if (tp->snd_cwnd <= tp->snd_wnd)
  tp->ccv->flags |= CCF_CWND_LIMITED;
 else
  tp->ccv->flags &= ~CCF_CWND_LIMITED;

 if (type == CC_ACK) {
  if (tp->snd_cwnd > tp->snd_ssthresh) {
   tp->t_bytes_acked += min(tp->ccv->bytes_this_ack,
       nsegs * V_tcp_abc_l_var * ctf_fixed_maxseg(tp));
   if (tp->t_bytes_acked >= tp->snd_cwnd) {
    tp->t_bytes_acked -= tp->snd_cwnd;
    tp->ccv->flags |= CCF_ABC_SENTAWND;
   }
  } else {
   tp->ccv->flags &= ~CCF_ABC_SENTAWND;
   tp->t_bytes_acked = 0;
  }
 }
 if (CC_ALGO(tp)->ack_received != ((void*)0)) {

  tp->ccv->curack = th->th_ack;
  CC_ALGO(tp)->ack_received(tp->ccv, type);
 }



 if (rack->r_ctl.rc_rack_largest_cwnd < tp->snd_cwnd) {
  rack->r_ctl.rc_rack_largest_cwnd = tp->snd_cwnd;
 }

 if (tp->t_peakrate_thr && tp->snd_cwnd > tp->t_peakrate_thr) {
  tp->snd_cwnd = tp->t_peakrate_thr;
 }
}
