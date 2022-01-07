
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct tcpcb {scalar_t__ t_state; scalar_t__ snd_una; scalar_t__ snd_max; int t_rxtshift; int snd_cwnd; int snd_cwnd_prev; scalar_t__ snd_recover_prev; scalar_t__ snd_recover; int t_srtt; int t_flags2; scalar_t__ t_pmtud_saved_maxseg; scalar_t__ t_maxseg; int t_rttvar; scalar_t__ t_rtttime; int t_flags; struct inpcb* t_inpcb; int t_rxtcur; scalar_t__ t_badrxtwin; int snd_ssthresh; int snd_ssthresh_prev; scalar_t__ t_softerror; TYPE_1__* t_timers; } ;
struct TYPE_6__ {int rack_sf; TYPE_2__* rc_resend; int rc_hpts_flags; } ;
struct tcp_rack {TYPE_3__ r_ctl; struct inpcb* rc_inp; } ;
struct inpcb {int inp_vflag; } ;
typedef int int32_t ;
struct TYPE_5__ {int r_flags; } ;
struct TYPE_4__ {int tt_flags; } ;


 int CC_RTO ;
 int ETIMEDOUT ;
 int INP_IPV6 ;
 scalar_t__ IN_CONGRECOVERY (int ) ;
 scalar_t__ IN_FASTRECOVERY (int ) ;
 int MSEC_2_TICKS (int) ;
 int PACE_TMR_RXT ;
 int RACK_INITIAL_RTO ;
 int RACK_RWND_COLLAPSED ;
 int TCPSTAT_INC (int ) ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TCPS_FIN_WAIT_1 ;
 scalar_t__ TCPS_HAVEESTABLISHED (scalar_t__) ;
 scalar_t__ TCPS_SYN_RECEIVED ;
 scalar_t__ TCPS_SYN_SENT ;
 int TCPT_RANGESET (int ,int,int ,int) ;
 int TCP_MAXRXTSHIFT ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 int TCP_RTT_SHIFT ;
 int TF2_PLPMTU_BLACKHOLE ;
 int TF2_PLPMTU_MAXSEGSNT ;
 int TF2_PLPMTU_PMTUD ;
 int TF_ACKNOW ;
 int TF_PREVVALID ;
 int TF_WASCRECOVERY ;
 int TF_WASFRECOVERY ;
 int TT_STOPPED ;
 scalar_t__ V_tcp_mssdflt ;
 scalar_t__ V_tcp_pmtud_blackhole_detect ;
 scalar_t__ V_tcp_pmtud_blackhole_mss ;
 scalar_t__ V_tcp_v6mssdflt ;
 scalar_t__ V_tcp_v6pmtud_blackhole_mss ;
 int in6_losing (struct inpcb*) ;
 int in_losing (struct inpcb*) ;
 int max (int,int) ;
 int rack_cong_signal (struct tcpcb*,int *,int ) ;
 scalar_t__ rack_progress_timeout_check (struct tcpcb*) ;
 int rack_remxt_tmr (struct tcpcb*) ;
 int rack_rto_max ;
 int rack_rto_min ;
 scalar_t__ rack_use_sack_filter ;
 int sack_filter_clear (int *,scalar_t__) ;
 int* tcp_backoff ;
 int tcp_set_inp_to_drop (struct inpcb*,int ) ;
 int tcps_pmtud_blackhole_activated ;
 int tcps_pmtud_blackhole_activated_min_mss ;
 int tcps_pmtud_blackhole_failed ;
 int tcps_rexmttimeo ;
 int tcps_timeoutdrop ;
 scalar_t__ ticks ;

__attribute__((used)) static int
rack_timeout_rxt(struct tcpcb *tp, struct tcp_rack *rack, uint32_t cts)
{
 int32_t rexmt;
 struct inpcb *inp;
 int32_t retval = 0;

 inp = tp->t_inpcb;
 if (tp->t_timers->tt_flags & TT_STOPPED) {
  return (1);
 }
 if (rack_progress_timeout_check(tp)) {
  tcp_set_inp_to_drop(inp, ETIMEDOUT);
  return (1);
 }
 rack->r_ctl.rc_hpts_flags &= ~PACE_TMR_RXT;
 if (TCPS_HAVEESTABLISHED(tp->t_state) &&
     (tp->snd_una == tp->snd_max)) {

  return (0);
 }





 rack_remxt_tmr(tp);
 if ((rack->r_ctl.rc_resend == ((void*)0)) ||
     ((rack->r_ctl.rc_resend->r_flags & RACK_RWND_COLLAPSED) == 0)) {






  tp->t_rxtshift++;
 }
 if (tp->t_rxtshift > TCP_MAXRXTSHIFT) {
  tp->t_rxtshift = TCP_MAXRXTSHIFT;
  TCPSTAT_INC(tcps_timeoutdrop);
  retval = 1;
  tcp_set_inp_to_drop(rack->rc_inp,
      (tp->t_softerror ? (uint16_t) tp->t_softerror : ETIMEDOUT));
  goto out;
 }
 if (tp->t_state == TCPS_SYN_SENT) {




  tp->snd_cwnd = 1;
 } else if (tp->t_rxtshift == 1) {
  tp->snd_cwnd_prev = tp->snd_cwnd;
  tp->snd_ssthresh_prev = tp->snd_ssthresh;
  tp->snd_recover_prev = tp->snd_recover;
  if (IN_FASTRECOVERY(tp->t_flags))
   tp->t_flags |= TF_WASFRECOVERY;
  else
   tp->t_flags &= ~TF_WASFRECOVERY;
  if (IN_CONGRECOVERY(tp->t_flags))
   tp->t_flags |= TF_WASCRECOVERY;
  else
   tp->t_flags &= ~TF_WASCRECOVERY;
  tp->t_badrxtwin = ticks + (tp->t_srtt >> (TCP_RTT_SHIFT + 1));
  tp->t_flags |= TF_PREVVALID;
 } else
  tp->t_flags &= ~TF_PREVVALID;
 TCPSTAT_INC(tcps_rexmttimeo);
 if ((tp->t_state == TCPS_SYN_SENT) ||
     (tp->t_state == TCPS_SYN_RECEIVED))
  rexmt = MSEC_2_TICKS(RACK_INITIAL_RTO * tcp_backoff[tp->t_rxtshift]);
 else
  rexmt = TCP_REXMTVAL(tp) * tcp_backoff[tp->t_rxtshift];
 TCPT_RANGESET(tp->t_rxtcur, rexmt,
    max(MSEC_2_TICKS(rack_rto_min), rexmt),
    MSEC_2_TICKS(rack_rto_max));







 if (V_tcp_pmtud_blackhole_detect && (((tp->t_state == TCPS_ESTABLISHED))
     || (tp->t_state == TCPS_FIN_WAIT_1))) {
  if (((tp->t_flags2 & (TF2_PLPMTU_PMTUD | TF2_PLPMTU_MAXSEGSNT)) ==
      (TF2_PLPMTU_PMTUD | TF2_PLPMTU_MAXSEGSNT)) &&
      (tp->t_rxtshift >= 2 && tp->t_rxtshift < 6 &&
      tp->t_rxtshift % 2 == 0)) {






   if ((tp->t_flags2 & TF2_PLPMTU_BLACKHOLE) == 0) {

    tp->t_flags2 |= TF2_PLPMTU_BLACKHOLE;

    tp->t_pmtud_saved_maxseg = tp->t_maxseg;
   }
  } else {
   if ((tp->t_flags2 & TF2_PLPMTU_BLACKHOLE) &&
       (tp->t_rxtshift >= 6)) {
    tp->t_flags2 |= TF2_PLPMTU_PMTUD;
    tp->t_flags2 &= ~TF2_PLPMTU_BLACKHOLE;
    tp->t_maxseg = tp->t_pmtud_saved_maxseg;
    TCPSTAT_INC(tcps_pmtud_blackhole_failed);
   }
  }
 }






 if (tp->t_rxtshift > TCP_MAXRXTSHIFT / 4) {





   in_losing(tp->t_inpcb);
  tp->t_rttvar += (tp->t_srtt >> TCP_RTT_SHIFT);
  tp->t_srtt = 0;
 }
 if (rack_use_sack_filter)
  sack_filter_clear(&rack->r_ctl.rack_sf, tp->snd_una);
 tp->snd_recover = tp->snd_max;
 tp->t_flags |= TF_ACKNOW;
 tp->t_rtttime = 0;
 rack_cong_signal(tp, ((void*)0), CC_RTO);
out:
 return (retval);
}
