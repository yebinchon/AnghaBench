
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flex2; int flex4; int flex7; int flex8; scalar_t__ flex5; int flex3; int flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint32_t ;
struct timeval {int dummy; } ;
struct tcpcb {scalar_t__ t_logstate; TYPE_3__* t_inpcb; } ;
struct TYPE_5__ {int rc_pace_max_segs; int rc_pace_min_segs; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
struct TYPE_7__ {TYPE_2__* inp_socket; } ;
struct TYPE_6__ {int so_snd; int so_rcv; } ;


 int TCP_HDWR_TLS ;
 int TCP_LOG_EVENTP (struct tcpcb*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,int ) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
bbr_log_type_hrdwtso(struct tcpcb *tp, struct tcp_bbr *bbr, int len, int mod, int what_we_can_send)
{
 if (tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct timeval tv;
  uint32_t cts;

  cts = tcp_get_usecs(&tv);
  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = bbr->r_ctl.rc_pace_min_segs;
  log.u_bbr.flex2 = what_we_can_send;
  log.u_bbr.flex3 = bbr->r_ctl.rc_pace_max_segs;
  log.u_bbr.flex4 = len;
  log.u_bbr.flex5 = 0;
  log.u_bbr.flex7 = mod;
  log.u_bbr.flex8 = 1;
  TCP_LOG_EVENTP(tp, ((void*)0),
      &tp->t_inpcb->inp_socket->so_rcv,
      &tp->t_inpcb->inp_socket->so_snd,
      TCP_HDWR_TLS, 0,
      0, &log, 0, &tv);
 }
}
