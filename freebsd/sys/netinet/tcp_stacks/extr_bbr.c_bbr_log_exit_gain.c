
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flex8; scalar_t__ flex7; int flex6; int flex5; int flex4; int flex3; scalar_t__ flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint32_t ;
struct TYPE_6__ {int rc_bbr_state_atflight; int rc_pace_min_segs; int rc_pace_max_segs; int gain_epoch; int rc_target_at_state; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; scalar_t__ rc_last_options; } ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ t_logstate; scalar_t__ t_maxseg; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_EXIT_GAIN ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,int ) ;

__attribute__((used)) static void
bbr_log_exit_gain(struct tcp_bbr *bbr, uint32_t cts, int32_t entry_method)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = bbr->r_ctl.rc_target_at_state;
  log.u_bbr.flex2 = (bbr->rc_tp->t_maxseg - bbr->rc_last_options);
  log.u_bbr.flex3 = bbr->r_ctl.gain_epoch;
  log.u_bbr.flex4 = bbr->r_ctl.rc_pace_max_segs;
  log.u_bbr.flex5 = bbr->r_ctl.rc_pace_min_segs;
  log.u_bbr.flex6 = bbr->r_ctl.rc_bbr_state_atflight;
  log.u_bbr.flex7 = 0;
  log.u_bbr.flex8 = entry_method;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_EXIT_GAIN, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
