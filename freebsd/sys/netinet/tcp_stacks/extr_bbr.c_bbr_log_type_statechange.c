
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flex7; int pkts_out; int lt_epoch; int flex6; int flex5; void* flex4; int flex3; int flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint32_t ;
struct TYPE_6__ {int rc_target_at_state; int rc_level_state_extra; int rc_lost_at_startup; int rc_bbr_last_startup_epoch; int rc_probertt_int; int rc_rtt_shrinks; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ t_logstate; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_STATE ;
 int BBR_RTT_PKTRTT ;
 int BBR_RTT_PROP ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,int ) ;
 void* bbr_get_rtt (struct tcp_bbr*,int ) ;
 scalar_t__ bbr_state_is_pkt_epoch ;

__attribute__((used)) static void
bbr_log_type_statechange(struct tcp_bbr *bbr, uint32_t cts, int32_t line)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = line;
  log.u_bbr.flex2 = bbr->r_ctl.rc_rtt_shrinks;
  log.u_bbr.flex3 = bbr->r_ctl.rc_probertt_int;
  if (bbr_state_is_pkt_epoch)
   log.u_bbr.flex4 = bbr_get_rtt(bbr, BBR_RTT_PKTRTT);
  else
   log.u_bbr.flex4 = bbr_get_rtt(bbr, BBR_RTT_PROP);
  log.u_bbr.flex5 = bbr->r_ctl.rc_bbr_last_startup_epoch;
  log.u_bbr.flex6 = bbr->r_ctl.rc_lost_at_startup;
  log.u_bbr.flex7 = (bbr->r_ctl.rc_target_at_state/1000);
  log.u_bbr.lt_epoch = bbr->r_ctl.rc_level_state_extra;
  log.u_bbr.pkts_out = bbr->r_ctl.rc_target_at_state;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_STATE, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
