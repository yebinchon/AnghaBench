
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flex7; scalar_t__ flex8; int flex6; int flex4; scalar_t__ flex3; scalar_t__ flex5; scalar_t__ flex2; scalar_t__ flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
struct TYPE_6__ {int rc_bbr_enters_probertt; int rc_pkt_epoch_loss_rate; int rc_rcvtime; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
struct TYPE_10__ {scalar_t__ t_logstate; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_BW_RED_EV ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,int ) ;

__attribute__((used)) static void
bbr_log_type_bw_reduce(struct tcp_bbr *bbr, int reason)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, bbr->r_ctl.rc_rcvtime);
  log.u_bbr.flex1 = 0;
  log.u_bbr.flex2 = 0;
  log.u_bbr.flex5 = 0;
  log.u_bbr.flex3 = 0;
  log.u_bbr.flex4 = bbr->r_ctl.rc_pkt_epoch_loss_rate;
  log.u_bbr.flex7 = reason;
  log.u_bbr.flex6 = bbr->r_ctl.rc_bbr_enters_probertt;
  log.u_bbr.flex8 = 0;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_BW_RED_EV, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
