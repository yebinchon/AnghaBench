
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int inflight; scalar_t__ flex8; void* flex7; int flex6; int flex5; int flex4; int flex3; void* flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef void* uint32_t ;
struct TYPE_6__ {int r_measurement_count; int rc_lost_at_startup; int rc_bbr_last_startup_epoch; int rc_pkt_epoch_rtt; int rc_bbr_lastbtlbw; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
struct TYPE_10__ {scalar_t__ t_logstate; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_PKT_EPOCH ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,void*) ;

__attribute__((used)) static void
bbr_log_pkt_epoch(struct tcp_bbr *bbr, uint32_t cts, uint32_t line,
    uint32_t lost, uint32_t del)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = lost;
  log.u_bbr.flex2 = del;
  log.u_bbr.flex3 = bbr->r_ctl.rc_bbr_lastbtlbw;
  log.u_bbr.flex4 = bbr->r_ctl.rc_pkt_epoch_rtt;
  log.u_bbr.flex5 = bbr->r_ctl.rc_bbr_last_startup_epoch;
  log.u_bbr.flex6 = bbr->r_ctl.rc_lost_at_startup;
  log.u_bbr.flex7 = line;
  log.u_bbr.flex8 = 0;
  log.u_bbr.inflight = bbr->r_ctl.r_measurement_count;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_PKT_EPOCH, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
