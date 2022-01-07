
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_srtt; scalar_t__ t_rxtshift; int t_rttvar; int t_rttbest; scalar_t__ t_softerror; int t_rttmin; int t_rxtcur; scalar_t__ t_rtttime; int t_rttupdated; int t_inpcb; } ;


 int INP_WLOCK_ASSERT (int ) ;
 int TCPSTAT_INC (int ) ;
 int TCPTV_REXMTMAX ;
 int TCPT_RANGESET (int ,int ,int ,int ) ;
 int TCP_DELTA_SHIFT ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 int TCP_RTTVAR_SHIFT ;
 scalar_t__ TCP_RTT_INVALIDATE ;
 int TCP_RTT_SHIFT ;
 int max (int ,int) ;
 int tcps_rttupdated ;

void
tcp_xmit_timer(struct tcpcb *tp, int rtt)
{
 int delta;

 INP_WLOCK_ASSERT(tp->t_inpcb);

 TCPSTAT_INC(tcps_rttupdated);
 tp->t_rttupdated++;
 if ((tp->t_srtt != 0) && (tp->t_rxtshift <= TCP_RTT_INVALIDATE)) {







  delta = ((rtt - 1) << TCP_DELTA_SHIFT)
   - (tp->t_srtt >> (TCP_RTT_SHIFT - TCP_DELTA_SHIFT));

  if ((tp->t_srtt += delta) <= 0)
   tp->t_srtt = 1;
  if (delta < 0)
   delta = -delta;
  delta -= tp->t_rttvar >> (TCP_RTTVAR_SHIFT - TCP_DELTA_SHIFT);
  if ((tp->t_rttvar += delta) <= 0)
   tp->t_rttvar = 1;
  if (tp->t_rttbest > tp->t_srtt + tp->t_rttvar)
      tp->t_rttbest = tp->t_srtt + tp->t_rttvar;
 } else {





  tp->t_srtt = rtt << TCP_RTT_SHIFT;
  tp->t_rttvar = rtt << (TCP_RTTVAR_SHIFT - 1);
  tp->t_rttbest = tp->t_srtt + tp->t_rttvar;
 }
 tp->t_rtttime = 0;
 tp->t_rxtshift = 0;
 TCPT_RANGESET(tp->t_rxtcur, TCP_REXMTVAL(tp),
        max(tp->t_rttmin, rtt + 2), TCPTV_REXMTMAX);
 tp->t_softerror = 0;
}
