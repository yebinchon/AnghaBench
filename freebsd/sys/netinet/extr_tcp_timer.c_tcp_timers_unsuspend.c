
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int t_flags; TYPE_4__* t_inpcb; int t_state; TYPE_1__* t_timers; int t_rxtshift; int snd_wnd; int t_rxtcur; int snd_una; int snd_max; } ;
struct TYPE_8__ {TYPE_3__* inp_socket; } ;
struct TYPE_6__ {int sb_state; } ;
struct TYPE_7__ {TYPE_2__ so_rcv; } ;
struct TYPE_5__ {int tt_flags; } ;


 int SBS_CANTRCVMORE ;
 int SEQ_GT (int ,int ) ;
 int TCPS_FIN_WAIT_2 ;
 int TCPS_HAVEESTABLISHED (int ) ;
 int TF_DELACK ;
 int TP_KEEPIDLE (struct tcpcb*) ;
 int TP_KEEPINIT (struct tcpcb*) ;
 int TP_MAXIDLE (struct tcpcb*) ;

 int TT_2MSL_SUS ;

 int TT_DELACK_SUS ;

 int TT_KEEP_SUS ;

 int TT_PERSIST_SUS ;

 int TT_REXMT_SUS ;
 int panic (char*,struct tcpcb*,int) ;
 int tcp_delacktime ;
 int tcp_fast_finwait2_recycle ;
 int tcp_finwait2_timeout ;
 int tcp_setpersist (struct tcpcb*) ;
 int tcp_timer_activate (struct tcpcb*,int const,int ) ;
 int tcp_timer_active (struct tcpcb*,int) ;

void
tcp_timers_unsuspend(struct tcpcb *tp, uint32_t timer_type)
{
 switch (timer_type) {
  case 131:
   if (tp->t_timers->tt_flags & TT_DELACK_SUS) {
    tp->t_timers->tt_flags &= ~TT_DELACK_SUS;
    if (tp->t_flags & TF_DELACK) {

     tp->t_flags &= ~TF_DELACK;
     tcp_timer_activate(tp, 131,
         tcp_delacktime);
    }
   }
   break;
  case 128:
   if (tp->t_timers->tt_flags & TT_REXMT_SUS) {
    tp->t_timers->tt_flags &= ~TT_REXMT_SUS;
    if (SEQ_GT(tp->snd_max, tp->snd_una) &&
        (tcp_timer_active((tp), 129) == 0) &&
        tp->snd_wnd) {

     tcp_timer_activate(tp, 128,
                                            tp->t_rxtcur);
    }
   }
   break;
  case 129:
   if (tp->t_timers->tt_flags & TT_PERSIST_SUS) {
    tp->t_timers->tt_flags &= ~TT_PERSIST_SUS;
    if (tp->snd_wnd == 0) {

     tp->t_rxtshift = 0;
     tcp_setpersist(tp);
    }
   }
   break;
  case 130:
   if (tp->t_timers->tt_flags & TT_KEEP_SUS) {
    tp->t_timers->tt_flags &= ~TT_KEEP_SUS;
    tcp_timer_activate(tp, 130,
         TCPS_HAVEESTABLISHED(tp->t_state) ?
         TP_KEEPIDLE(tp) : TP_KEEPINIT(tp));
   }
   break;
  case 132:
   if (tp->t_timers->tt_flags &= TT_2MSL_SUS) {
    tp->t_timers->tt_flags &= ~TT_2MSL_SUS;
    if ((tp->t_state == TCPS_FIN_WAIT_2) &&
        ((tp->t_inpcb->inp_socket == ((void*)0)) ||
         (tp->t_inpcb->inp_socket->so_rcv.sb_state & SBS_CANTRCVMORE))) {

     tcp_timer_activate(tp, 132,
         (tcp_fast_finwait2_recycle) ?
         tcp_finwait2_timeout : TP_MAXIDLE(tp));
    }
   }
   break;
  default:
   panic("tp:%p bad timer_type 0x%x", tp, timer_type);
 }
}
