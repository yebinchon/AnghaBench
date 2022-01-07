
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct txseginfo {void* tx_ts; int len; } ;
struct tcpcb {int t_flags; int snd_cwnd; } ;
struct ertt {int flags; int marked_snd_cwnd; scalar_t__ bytes_tx_in_rtt; scalar_t__ bytes_tx_in_marked_rtt; void* markedpkt_rtt; } ;


 int ERTT_MEASUREMENT_IN_PROGRESS ;
 int ERTT_NEW_MEASUREMENT ;
 int ERTT_TSO_DISABLED ;
 int FORCED_MEASUREMENT ;
 int MULTI_ACK ;
 int OLD_TXSI ;
 int TF_TSO ;
 void* tcp_ts_getticks () ;

__attribute__((used)) static void inline
marked_packet_rtt(struct txseginfo *txsi, struct ertt *e_t, struct tcpcb *tp,
    uint32_t *pmeasurenext, int *pmeasurenext_len, int *prtt_bytes_adjust,
    int mflag)
{







 if (mflag & (MULTI_ACK|OLD_TXSI)) {
  *pmeasurenext = txsi->tx_ts;
  *pmeasurenext_len = txsi->len;
  *prtt_bytes_adjust += *pmeasurenext_len;
 } else {
  if (mflag & FORCED_MEASUREMENT) {
   e_t->markedpkt_rtt = tcp_ts_getticks() -
       *pmeasurenext + 1;
   e_t->bytes_tx_in_marked_rtt = e_t->bytes_tx_in_rtt +
       *pmeasurenext_len - *prtt_bytes_adjust;
  } else {
   e_t->markedpkt_rtt = tcp_ts_getticks() -
       txsi->tx_ts + 1;
   e_t->bytes_tx_in_marked_rtt = e_t->bytes_tx_in_rtt -
       *prtt_bytes_adjust;
  }
  e_t->marked_snd_cwnd = tp->snd_cwnd;





  e_t->flags &= ~ERTT_MEASUREMENT_IN_PROGRESS;





  e_t->flags |= ERTT_NEW_MEASUREMENT;

  if (tp->t_flags & TF_TSO) {

   tp->t_flags &= ~TF_TSO;

   e_t->flags |= ERTT_TSO_DISABLED;
  }
 }
}
