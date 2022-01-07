
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flex8; int flex7; int flex6; void* flex5; void* flex4; int flex3; int flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint8_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int rc_target_at_state; int last_in_probertt; int rc_rtt_shrinks; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
struct TYPE_10__ {scalar_t__ t_logstate; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_RTT_SHRINKS ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,void*) ;

__attribute__((used)) static void
bbr_log_rtt_shrinks(struct tcp_bbr *bbr, uint32_t cts, uint32_t applied,
      uint32_t rtt, uint32_t line, uint8_t reas, uint16_t cond)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = line;
  log.u_bbr.flex2 = bbr->r_ctl.rc_rtt_shrinks;
  log.u_bbr.flex3 = bbr->r_ctl.last_in_probertt;
  log.u_bbr.flex4 = applied;
  log.u_bbr.flex5 = rtt;
  log.u_bbr.flex6 = bbr->r_ctl.rc_target_at_state;
  log.u_bbr.flex7 = cond;
  log.u_bbr.flex8 = reas;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_RTT_SHRINKS, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
