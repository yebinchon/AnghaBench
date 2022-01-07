
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flex8; scalar_t__ flex7; void* flex6; int pkts_out; int flex5; int flex4; int flex3; int flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef void* uint32_t ;
struct TYPE_6__ {int rc_target_at_state; int rc_ack_hdwr_delay; int rc_bbr_state_time; int rc_rcvtime; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; int rc_ack_was_delayed; TYPE_1__ r_ctl; } ;
struct TYPE_10__ {scalar_t__ t_logstate; int ts_offset; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 int TCP_LOG_RTT ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,int ) ;
 int tcp_tv_to_mssectick (int *) ;

__attribute__((used)) static void
bbr_log_rtt_sample(struct tcp_bbr *bbr, uint32_t rtt, uint32_t tsin)
{




 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, bbr->r_ctl.rc_rcvtime);
  log.u_bbr.flex1 = rtt;
  log.u_bbr.flex2 = bbr->r_ctl.rc_bbr_state_time;
  log.u_bbr.flex3 = bbr->r_ctl.rc_ack_hdwr_delay;
  log.u_bbr.flex4 = bbr->rc_tp->ts_offset;
  log.u_bbr.flex5 = bbr->r_ctl.rc_target_at_state;
  log.u_bbr.pkts_out = tcp_tv_to_mssectick(&bbr->rc_tv);
  log.u_bbr.flex6 = tsin;
  log.u_bbr.flex7 = 0;
  log.u_bbr.flex8 = bbr->rc_ack_was_delayed;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      TCP_LOG_RTT, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
