
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct tcphdr {int th_ack; } ;
struct tcpcb {scalar_t__ snd_cwnd; scalar_t__ snd_wnd; scalar_t__ snd_ssthresh; scalar_t__ t_bytes_acked; TYPE_1__* ccv; int t_inpcb; } ;
struct TYPE_4__ {int (* ack_received ) (TYPE_1__*,scalar_t__) ;} ;
struct TYPE_3__ {int curack; int flags; int bytes_this_ack; scalar_t__ nsegs; } ;


 int BYTES_THIS_ACK (struct tcpcb*,struct tcphdr*) ;
 int CCF_ABC_SENTAWND ;
 int CCF_CWND_LIMITED ;
 scalar_t__ CC_ACK ;
 TYPE_2__* CC_ALGO (struct tcpcb*) ;
 int INP_WLOCK_ASSERT (int ) ;
 scalar_t__ V_tcp_abc_l_var ;
 scalar_t__ min (int ,scalar_t__) ;
 int stub1 (TYPE_1__*,scalar_t__) ;
 scalar_t__ tcp_maxseg (struct tcpcb*) ;

void
cc_ack_received(struct tcpcb *tp, struct tcphdr *th, uint16_t nsegs,
    uint16_t type)
{
 INP_WLOCK_ASSERT(tp->t_inpcb);

 tp->ccv->nsegs = nsegs;
 tp->ccv->bytes_this_ack = BYTES_THIS_ACK(tp, th);
 if (tp->snd_cwnd <= tp->snd_wnd)
  tp->ccv->flags |= CCF_CWND_LIMITED;
 else
  tp->ccv->flags &= ~CCF_CWND_LIMITED;

 if (type == CC_ACK) {
  if (tp->snd_cwnd > tp->snd_ssthresh) {
   tp->t_bytes_acked += min(tp->ccv->bytes_this_ack,
        nsegs * V_tcp_abc_l_var * tcp_maxseg(tp));
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
}
