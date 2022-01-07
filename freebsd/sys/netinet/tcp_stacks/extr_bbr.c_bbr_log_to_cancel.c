
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int pkts_out; int flex8; int flex6; int flex5; int flex4; int flex3; int flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int rc_target_at_state; int rc_hpts_flags; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; int rc_pacer_started; TYPE_1__ r_ctl; int rc_in_persist; int bbr_timer_src; } ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ t_logstate; int t_rxtcur; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_TIMERCANC ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int TICKS_2_USEC (int ) ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,int ) ;

__attribute__((used)) static void
bbr_log_to_cancel(struct tcp_bbr *bbr, int32_t line, uint32_t cts, uint8_t hpts_removed)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = line;
  log.u_bbr.flex2 = bbr->bbr_timer_src;
  log.u_bbr.flex3 = bbr->r_ctl.rc_hpts_flags;
  log.u_bbr.flex4 = bbr->rc_in_persist;
  log.u_bbr.flex5 = bbr->r_ctl.rc_target_at_state;
  log.u_bbr.flex6 = TICKS_2_USEC(bbr->rc_tp->t_rxtcur);
  log.u_bbr.flex8 = hpts_removed;
  log.u_bbr.pkts_out = bbr->rc_pacer_started;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_TIMERCANC, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
