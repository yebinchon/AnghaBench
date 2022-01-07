
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct tcpcb {scalar_t__ t_state; scalar_t__ snd_una; scalar_t__ snd_max; int t_rxtshift; int snd_cwnd; int t_maxseg; int t_flags; int snd_cwnd_prev; scalar_t__ snd_recover_prev; scalar_t__ snd_recover; int t_srtt; int t_flags2; int t_pmtud_saved_maxseg; int t_rttvar; scalar_t__ t_rtttime; int t_inpcb; int t_rxtcur; scalar_t__ t_badrxtwin; int snd_ssthresh; int snd_ssthresh_prev; scalar_t__ t_softerror; } ;
struct TYPE_4__ {int rc_min_rto_ms; int bbr_sf; TYPE_1__* rc_resend; int rc_hpts_flags; } ;
struct tcp_bbr {int rc_last_options; int r_is_v6; TYPE_2__ r_ctl; scalar_t__ rc_max_rto_sec; int rc_inp; scalar_t__ rc_all_timers_stopped; } ;
typedef int int32_t ;
struct TYPE_3__ {int r_flags; } ;


 int BBR_INITIAL_RTO ;
 int BBR_RWND_COLLAPSED ;
 int ETIMEDOUT ;
 int IN_RECOVERY (int) ;
 int MSEC_2_TICKS (int) ;
 int PACE_TMR_RXT ;
 int TCPSTAT_INC (int ) ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TCPS_FIN_WAIT_1 ;
 scalar_t__ TCPS_HAVEESTABLISHED (scalar_t__) ;
 scalar_t__ TCPS_SYN_RECEIVED ;
 scalar_t__ TCPS_SYN_SENT ;
 int TCPT_RANGESET (int ,int,int ,int ) ;
 int TCP_MAXRXTSHIFT ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 int TCP_RTT_SHIFT ;
 int TF2_PLPMTU_BLACKHOLE ;
 int TF2_PLPMTU_MAXSEGSNT ;
 int TF2_PLPMTU_PMTUD ;
 int TF_ACKNOW ;
 int TF_PREVVALID ;
 int TF_REQ_SCALE ;
 int TF_REQ_TSTMP ;
 int TF_SACK_PERMIT ;
 int USEC_2_TICKS (int ) ;
 scalar_t__ V_tcp_mssdflt ;
 scalar_t__ V_tcp_pmtud_blackhole_detect ;
 scalar_t__ V_tcp_pmtud_blackhole_mss ;
 scalar_t__ V_tcp_v6mssdflt ;
 scalar_t__ V_tcp_v6pmtud_blackhole_mss ;
 scalar_t__ bbr_progress_timeout_check (struct tcp_bbr*) ;
 int bbr_remxt_tmr (struct tcpcb*) ;
 int in6_losing (int ) ;
 int in_losing (int ) ;
 int sack_filter_clear (int *,scalar_t__) ;
 int* tcp_backoff ;
 scalar_t__ tcp_rexmit_drop_options ;
 int tcp_set_inp_to_drop (int ,int ) ;
 int tcps_pmtud_blackhole_activated ;
 int tcps_pmtud_blackhole_activated_min_mss ;
 int tcps_pmtud_blackhole_failed ;
 int tcps_rexmttimeo ;
 int tcps_timeoutdrop ;
 scalar_t__ ticks ;

__attribute__((used)) static int
bbr_timeout_rxt(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t cts)
{
 int32_t rexmt;
 int32_t retval = 0;

 bbr->r_ctl.rc_hpts_flags &= ~PACE_TMR_RXT;
 if (bbr->rc_all_timers_stopped) {
  return (1);
 }
 if (TCPS_HAVEESTABLISHED(tp->t_state) &&
     (tp->snd_una == tp->snd_max)) {

  return (0);
 }





 if (bbr_progress_timeout_check(bbr)) {
  retval = 1;
  tcp_set_inp_to_drop(bbr->rc_inp, ETIMEDOUT);
  goto out;
 }
 bbr_remxt_tmr(tp);
 if ((bbr->r_ctl.rc_resend == ((void*)0)) ||
     ((bbr->r_ctl.rc_resend->r_flags & BBR_RWND_COLLAPSED) == 0)) {






  tp->t_rxtshift++;
 }
 if (tp->t_rxtshift > TCP_MAXRXTSHIFT) {
  tp->t_rxtshift = TCP_MAXRXTSHIFT;
  TCPSTAT_INC(tcps_timeoutdrop);
  retval = 1;
  tcp_set_inp_to_drop(bbr->rc_inp,
      (tp->t_softerror ? (uint16_t) tp->t_softerror : ETIMEDOUT));
  goto out;
 }
 if (tp->t_state == TCPS_SYN_SENT) {




  tp->snd_cwnd = 1;
 } else if (tp->t_rxtshift == 1) {
  tp->snd_cwnd = tp->t_maxseg - bbr->rc_last_options;
  if (!IN_RECOVERY(tp->t_flags)) {
   tp->snd_cwnd_prev = tp->snd_cwnd;
   tp->snd_ssthresh_prev = tp->snd_ssthresh;
   tp->snd_recover_prev = tp->snd_recover;
   tp->t_badrxtwin = ticks + (tp->t_srtt >> (TCP_RTT_SHIFT + 1));
   tp->t_flags |= TF_PREVVALID;
  } else {
   tp->t_flags &= ~TF_PREVVALID;
  }
  tp->snd_cwnd = tp->t_maxseg - bbr->rc_last_options;
 } else {
  tp->snd_cwnd = tp->t_maxseg - bbr->rc_last_options;
  tp->t_flags &= ~TF_PREVVALID;
 }
 TCPSTAT_INC(tcps_rexmttimeo);
 if ((tp->t_state == TCPS_SYN_SENT) ||
     (tp->t_state == TCPS_SYN_RECEIVED))
  rexmt = USEC_2_TICKS(BBR_INITIAL_RTO) * tcp_backoff[tp->t_rxtshift];
 else
  rexmt = TCP_REXMTVAL(tp) * tcp_backoff[tp->t_rxtshift];
 TCPT_RANGESET(tp->t_rxtcur, rexmt,
     MSEC_2_TICKS(bbr->r_ctl.rc_min_rto_ms),
     MSEC_2_TICKS(((uint32_t)bbr->rc_max_rto_sec) * 1000));







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







 if (tcp_rexmit_drop_options && (tp->t_state == TCPS_SYN_SENT) &&
     (tp->t_rxtshift == 3))
  tp->t_flags &= ~(TF_REQ_SCALE | TF_REQ_TSTMP | TF_SACK_PERMIT);






 if (tp->t_rxtshift > TCP_MAXRXTSHIFT / 4) {





   in_losing(tp->t_inpcb);
  tp->t_rttvar += (tp->t_srtt >> TCP_RTT_SHIFT);
  tp->t_srtt = 0;
 }
 sack_filter_clear(&bbr->r_ctl.bbr_sf, tp->snd_una);
 tp->snd_recover = tp->snd_max;
 tp->t_flags |= TF_ACKNOW;
 tp->t_rtttime = 0;
out:
 return (retval);
}
